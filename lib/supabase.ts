import { createClient } from '@supabase/supabase-js'

export type UserType = 'citizen' | 'government'

export interface CitizenProfile {
  id: string
  user_type: 'citizen'
  government_credentials?: string
  department?: string
  citizen_id: string
  address: string
  postcode: string
  full_name?: string
  created_at: string
  email: string
}

export interface GovernmentProfile {
  id: string
  user_type: 'government'
  government_credentials: string
  department: string
  citizen_id?: string
  address: string
  postcode: string
  full_name?: string
  created_at: string
  email: string
}

export type Profile = CitizenProfile | GovernmentProfile

// Validate environment variables
const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY

if (!supabaseUrl || !supabaseAnonKey) {
  throw new Error(
    'Missing Supabase environment variables. Please check your .env.local file.'
  )
}

export const supabase = createClient(supabaseUrl, supabaseAnonKey)

export const isSupabaseConfigured = () => {
  return !!(supabaseUrl && supabaseAnonKey)
}
