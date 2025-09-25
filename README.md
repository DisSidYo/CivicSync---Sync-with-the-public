# CivicSync - Restructured Project Layout

## 🎯 **PROJECT OVERVIEW**

CivicSync is a government-citizen engagement platform that allows local governments to share infrastructure projects and citizens to vote and provide feedback. The platform uses AI to generate insights from citizen feedback.

## 🏗️ **NEW PROJECT STRUCTURE**

The project has been restructured for optimal 4-person team collaboration:

```
civic-engagement-app/
├── app/                          # Next.js app router (minimal)
├── features/                     # Feature-based organization
│   ├── auth/                    # 👤 TEAM MEMBER 1: Authentication
│   ├── citizen/                 # 👤 TEAM MEMBER 2: Citizen Features
│   └── government/              # 👤 TEAM MEMBER 3: Government Features
├── core/                        # 👤 TEAM MEMBER 4: Core Infrastructure
├── api/                         # 👤 TEAM MEMBER 4: Flask API
└── shared/                      # Shared resources
```

## 👥 **TEAM ASSIGNMENTS**

### **👤 Team Member 1: Authentication & User Management**
**Directory**: `features/auth/`
**Responsibilities**: User registration, login, role management, profile management

### **👤 Team Member 2: Citizen Features & Voting System**
**Directory**: `features/citizen/`
**Responsibilities**: Citizen dashboard, Instagram-style project feed, voting system, pros/cons interface

### **👤 Team Member 3: Government Features & Project Management**
**Directory**: `features/government/`
**Responsibilities**: Government dashboard, project creation, media upload, policy document management

### **👤 Team Member 4: Core Infrastructure, AI API & Database**
**Directory**: `core/` + `api/`
**Responsibilities**: Database setup, shared components, Flask API, AI integration

## 🚀 **GETTING STARTED FOR TEAM MEMBERS**

### **1. Navigate to Your Directory**
Each team member should work exclusively in their assigned feature directory:

```bash
# Team Member 1
cd features/auth/

# Team Member 2  
cd features/citizen/

# Team Member 3
cd features/government/

# Team Member 4
cd core/ && cd ../api/
```

### **2. Read Your README**
Each feature directory contains a detailed README with:
- Specific responsibilities
- Required features to implement
- Technical requirements
- Interfaces with other teams

### **3. Start Development**
- Use the provided starter files as templates
- Follow the established patterns
- Coordinate with other team members for shared interfaces

## 🔗 **TEAM COORDINATION**

### **Daily Standups**
- Share progress updates
- Identify blocking dependencies
- Coordinate shared interfaces

### **Shared Resources**
- **Types**: Use `core/types/` for shared TypeScript definitions
- **Components**: Use `core/components/` for shared UI components
- **Utilities**: Use `core/utils/` for common functions
- **API**: Coordinate with Team Member 4 for endpoints

### **Communication Points**
- **Team 1 ↔ Team 2**: Authentication state for citizen features
- **Team 1 ↔ Team 3**: Authentication state for government features
- **Team 2 ↔ Team 3**: Project data flow
- **All ↔ Team 4**: API endpoints and shared components

## 📋 **DEVELOPMENT WORKFLOW**

### **Phase 1: Foundation (Week 1)**
- Team Member 4: Set up database and core infrastructure
- Others: Study requirements and plan features

### **Phase 2: Core Features (Week 2)**
- All teams: Parallel development in their directories
- Daily coordination for shared interfaces

### **Phase 3: Integration (Week 3)**
- Integration testing between features
- End-to-end testing of complete flows

### **Phase 4: Polish & Deploy (Week 4)**
- UI/UX refinement
- Testing and bug fixes
- Deployment preparation

## 🔒 **ISOLATION STRATEGIES**

### **Feature Isolation**
- Each feature directory is completely independent
- No cross-imports between features
- Features communicate only through shared core modules

### **API Contracts**
- Define clear interfaces between features
- Use TypeScript interfaces for data contracts
- API endpoints are versioned and documented

### **Component Boundaries**
- Shared components in `core/components/`
- Feature-specific components stay in their feature directory
- Clear naming conventions prevent conflicts

## 📚 **IMPORTANT FILES**

- `COLLABORATION_STRUCTURE.md` - Detailed team structure and responsibilities
- `PROJECT_TRACKER.md` - Comprehensive task tracking for all team members
- `DATABASE_SCHEMA_PLAN.md` - Database design for Team Member 4
- `README_RESTRUCTURED.md` - This file explaining the new structure

## 🎯 **SUCCESS METRICS**

- **Zero conflicts**: Each person works in isolation
- **Parallel development**: All 4 can code simultaneously
- **Clear ownership**: No confusion about who owns what
- **Scalable architecture**: Easy to add new features later

## 🚨 **IMPORTANT RULES**

1. **Stay in your directory** - Don't modify other team members' code
2. **Use shared resources** - Leverage components and utilities from `core/`
3. **Coordinate interfaces** - Communicate with other teams for shared dependencies
4. **Follow patterns** - Use the established structure and naming conventions
5. **Test integration** - Ensure your features work with others

## 🆘 **GETTING HELP**

- **Team coordination**: Use daily standups
- **Technical issues**: Check your feature directory README
- **Shared resources**: Coordinate with Team Member 4
- **Architecture questions**: Review the collaboration structure document

---

**Happy coding! 🚀**

**Remember**: This structure is designed to maximize productivity and minimize conflicts. Each team member can work independently while building toward a cohesive final product.
