# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a complete KTV song selection system with three main components:
- Server-side backend (Node.js/Express)
- Admin panel frontend (Vue.js with Element UI)
- Client-side frontend (Vue.js with Element UI)

## Architecture

### Backend (Root directory)
- Main entry point: `index.js`
- Framework: Express.js with MongoDB/Mongoose
- Authentication: Passport.js with JWT tokens
- API routes in `/api` directory (music, user, safecode, admin)
- Database models in `/dbModel` directory (admin, adminlike, music, user)
- Configuration in `/config` directory (HTTP headers, passport, upload handlers)

### Admin Panel (`/ktv-admin`)
- Vue.js 2.x application
- UI framework: Element UI and View Design
- Routes defined in `src/router.js`
- State management with Vuex stores

### Client Application (`/ktv-client`)
- Vue.js 2.x application
- UI framework: Element UI and View Design
- Routes defined in `src/router.js`
- State management with Vuex stores

## Technology Stack

### Backend
- Node.js with Express.js framework
- MongoDB with Mongoose ODM
- JSON Web Tokens (JWT) for authentication
- Passport.js for authentication middleware
- bcrypt for password hashing
- svg-captcha for verification codes

### Frontend
- Vue.js 2.x
- Element UI and View Design UI frameworks
- Axios for HTTP requests
- Vuex for state management

## Running the Application

### Backend Server
```bash
npm install
npm run server
```
Server runs on port 8633 by default.

### Admin Panel
```bash
cd ktv-admin
npm install
npm run serve
```

### Client Application
```bash
cd ktv-client
npm install
npm run serve
```

## Key Features

- Music management (add, search, play)
- User authentication and authorization
- Admin panel for content management
- CAPTCHA verification system
- File upload functionality (images and music)
- JWT-based token authentication

## Important Files and Directories

- `index.js` - Main server entry point
- `mongodb/mongodb.js` - Database connection setup
- `config/http.js` - CORS and HTTP header configuration
- `config/passport.js` - JWT authentication strategy
- `/api` - REST API route handlers
- `/dbModel` - Mongoose schema definitions
- `/secret` - Sensitive configuration (JWT key, MongoDB URI)