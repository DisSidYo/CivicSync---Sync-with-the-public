# CivicSync - Government-Citizen Engagement Platform

A modern civic engagement application that connects governments with citizens, enabling transparent project sharing, voting, and community feedback. Built for the 24-hour hackathon.

## 🚀 Features

- **Dual Role Authentication**: Separate login systems for citizens and government officials
- **Role-Based Access**: Different dashboards and permissions based on user type
- **Modern UI/UX**: Responsive design built with Tailwind CSS
- **Secure Authentication**: Supabase-powered user management
- **AI-Ready Backend**: Flask API placeholder for future AI integration
- **Vercel Deployment**: Optimized for cloud hosting

## 🏗️ Project Structure

```
civic-engagement-app/
├── app/                          # Next.js app directory
│   ├── auth/                     # Authentication pages
│   │   ├── citizen/             # Citizen login
│   │   ├── government/          # Government login
│   │   └── signup/              # User registration
│   ├── dashboard/                # User dashboards
│   │   ├── citizen/             # Citizen dashboard
│   │   └── government/          # Government dashboard
│   ├── globals.css              # Global styles
│   ├── layout.tsx               # Root layout
│   └── page.tsx                 # Landing page
├── api/                          # Flask API
│   ├── app.py                   # Main Flask application
│   └── requirements.txt         # Python dependencies
├── lib/                          # Utility libraries
│   └── supabase.ts              # Supabase client configuration
├── supabase/                     # Database schema
│   └── schema.sql               # SQL schema and policies
├── package.json                  # Node.js dependencies
├── tailwind.config.js           # Tailwind CSS configuration
├── tsconfig.json                # TypeScript configuration
├── vercel.json                  # Vercel deployment config
└── env.example                  # Environment variables template
```

## 🛠️ Tech Stack

### Frontend
- **Next.js 14** - React framework with App Router
- **TypeScript** - Type-safe JavaScript
- **Tailwind CSS** - Utility-first CSS framework
- **Supabase Auth** - User authentication and management

### Backend
- **Flask** - Python web framework
- **Supabase** - Database and authentication
- **PostgreSQL** - Database (via Supabase)

### Deployment
- **Vercel** - Frontend hosting
- **Supabase** - Backend-as-a-Service

## 📋 Prerequisites

- Node.js 18+ 
- Python 3.8+
- Supabase account
- Vercel account (for deployment)

## 🚀 Quick Start

### 1. Clone and Install Dependencies

```bash
git clone <repository-url>
cd civic-engagement-app
npm install
```

### 2. Set Up Supabase

1. Create a new project at [supabase.com](https://supabase.com)
2. Go to Settings > API to get your project URL and anon key
3. Run the schema file in the SQL editor:
   ```sql
   -- Copy and paste the contents of supabase/schema.sql
   ```

### 3. Configure Environment Variables

Copy `env.example` to `.env.local` and fill in your values:

```bash
cp env.example .env.local
```

Edit `.env.local` with your Supabase credentials:
```env
NEXT_PUBLIC_SUPABASE_URL=your_supabase_project_url
NEXT_PUBLIC_SUPABASE_ANON_KEY=your_supabase_anon_key
```

### 4. Start Development Server

```bash
npm run dev
```

Visit [http://localhost:3000](http://localhost:3000) to see your app!

### 5. Start Flask API (Optional)

```bash
cd api
pip install -r requirements.txt
python app.py
```

The API will be available at [http://localhost:5000](http://localhost:5000)

## 🔐 User Roles

### Citizen
- **Registration**: Username, password, address, postcode
- **Features**: View projects, vote, comment (coming soon)
- **Dashboard**: Personal profile and civic engagement overview

### Government
- **Registration**: Username, password, government ID
- **Features**: Create projects, manage initiatives (coming soon)
- **Dashboard**: Project management and analytics

## 🗄️ Database Schema

The app uses the following main tables:

- **profiles**: User information and role management
- **projects**: Civic project details and metadata
- **votes**: Citizen voting records
- **comments**: Citizen feedback and comments

All tables include Row Level Security (RLS) policies for data protection.

## 🚀 Deployment

### Vercel (Frontend)

1. Push your code to GitHub
2. Connect your repository to Vercel
3. Add environment variables in Vercel dashboard
4. Deploy!

### Supabase (Backend)

Your Supabase project is automatically deployed and managed.

## 🔮 Future Features

- **Voting System**: Citizen voting on civic projects
- **Comment System**: Community feedback and discussions
- **AI Integration**: Sentiment analysis and project suggestions
- **Project Management**: Government project creation and management
- **Notifications**: Real-time updates and alerts
- **Mobile App**: React Native mobile application

## 🤝 Contributing

This is a hackathon project, but contributions are welcome! Please:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## 📝 License

This project is built for educational and hackathon purposes.

## 🆘 Support

For questions or issues:

1. Check the [Issues](../../issues) page
2. Review the Supabase documentation
3. Check Next.js and Tailwind CSS docs

## 🎯 Hackathon Goals

- ✅ Basic authentication system
- ✅ Role-based user management
- ✅ Responsive UI with Tailwind
- ✅ Supabase integration
- ✅ Flask API placeholder
- 🔄 Voting system (next phase)
- 🔄 AI integration (next phase)
- 🔄 Project management (next phase)

---

**Built with ❤️ for the 24-hour hackathon**