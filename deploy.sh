#!/bin/bash

echo "🚀 CivicSync Deployment Script"
echo "================================"

# Check if we're in the right directory
if [ ! -f "package.json" ]; then
    echo "❌ Error: Please run this script from the project root directory"
    exit 1
fi

# Install dependencies
echo "📦 Installing Node.js dependencies..."
npm install

# Build the project
echo "🔨 Building the project..."
npm run build

# Check if build was successful
if [ $? -eq 0 ]; then
    echo "✅ Build successful!"
else
    echo "❌ Build failed!"
    exit 1
fi

echo ""
echo "🎯 Next Steps for Deployment:"
echo "================================"
echo ""
echo "1. 🚀 Deploy to Vercel:"
echo "   - Push your code to GitHub"
echo "   - Connect repository to Vercel"
echo "   - Add environment variables:"
echo "     - NEXT_PUBLIC_SUPABASE_URL"
echo "     - NEXT_PUBLIC_SUPABASE_ANON_KEY"
echo ""
echo "2. 🗄️ Set up Supabase:"
echo "   - Create project at supabase.com"
echo "   - Run schema.sql in SQL editor"
echo "   - Update environment variables"
echo ""
echo "3. 🐍 Deploy Flask API (Optional):"
echo "   - Deploy to Heroku, Railway, or similar"
echo "   - Update API_URL in environment variables"
echo ""
echo "4. 🔧 Environment Variables:"
echo "   - Copy env.example to .env.local"
echo "   - Fill in your Supabase credentials"
echo ""
echo "📚 For detailed instructions, see README.md"
echo ""
echo "🎉 Happy coding!"
