# CivicSync Database Schema Plan

## 🎯 **OVERVIEW**
This document outlines the complete database schema needed to support the CivicSync platform's requirements for government-citizen engagement, AI-powered analysis, and media management.

---

CREATE TABLE public.profiles (
  id uuid REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL PRIMARY KEY,
  user_type USER-DEFINED NOT NULL,
  government_credentials text,
  department character varying,
  citizen_id character varying,
  address text NOT NULL,
  postcode character varying NOT NULL,
  full_name character varying,
  created_at timestamp with time zone DEFAULT now(),
  email character varying NOT NULL,
  CONSTRAINT profiles_pkey PRIMARY KEY (id)
);
CREATE TABLE public.ai_analysis (
  id uuid NOT NULL DEFAULT uuid_generate_v4(),
  post_id uuid NOT NULL,
  pros_content ARRAY,
  cons_content ARRAY,
  executive_summary text,
  created_at timestamp with time zone DEFAULT now(),
  CONSTRAINT ai_analysis_pkey PRIMARY KEY (id),
  CONSTRAINT ai_analysis_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id)
);
CREATE TABLE public.comments (
  id uuid NOT NULL DEFAULT uuid_generate_v4(),
  post_id uuid NOT NULL,
  user_id uuid NOT NULL,
  content text NOT NULL,
  created_at timestamp with time zone DEFAULT now(),
  CONSTRAINT comments_pkey PRIMARY KEY (id),
  CONSTRAINT comments_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.profiles(id),
  CONSTRAINT comments_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id)
);
CREATE TABLE public.posts (
  id uuid NOT NULL DEFAULT uuid_generate_v4(),
  government_user_id uuid NOT NULL,
  title character varying NOT NULL,
  description text NOT NULL,
  location text NOT NULL,
  estimated_budget numeric,
  total_votes integer DEFAULT 0,
  total_upvotes integer DEFAULT 0,
  total_downvotes integer DEFAULT 0,
  comments_count integer DEFAULT 0,
  created_at timestamp with time zone DEFAULT now(),
  CONSTRAINT posts_pkey PRIMARY KEY (id),
  CONSTRAINT posts_government_user_id_fkey FOREIGN KEY (government_user_id) REFERENCES public.profiles(id)
);
CREATE TABLE public.videos (
  id uuid NOT NULL DEFAULT uuid_generate_v4(),
  post_id uuid NOT NULL,
  storage_path character varying NOT NULL,
  public_url text NOT NULL,
  filename character varying NOT NULL,
  created_at timestamp with time zone DEFAULT now(),
  CONSTRAINT videos_pkey PRIMARY KEY (id),
  CONSTRAINT videos_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id)
);
CREATE TABLE public.votes (
  id uuid NOT NULL DEFAULT uuid_generate_v4(),
  citizen_user_id uuid NOT NULL,
  post_id uuid NOT NULL,
  vote_type character varying NOT NULL CHECK (vote_type::text = ANY (ARRAY['upvote'::character varying, 'downvote'::character varying]::text[])),
  created_at timestamp with time zone DEFAULT now(),
  CONSTRAINT votes_pkey PRIMARY KEY (id),
  CONSTRAINT votes_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id),
  CONSTRAINT votes_citizen_user_id_fkey FOREIGN KEY (citizen_user_id) REFERENCES public.profiles(id)
);