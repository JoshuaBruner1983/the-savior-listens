# Dependencies
node_modules
.pnp
.pnp.js

# Testing
coverage

# Production
dist
build

# Misc
.DS_Store
.env
.env.local
.env.production.local
.env.development.local
.env.test.local

# Logs
npm-debug.log*
yarn-debug.log*
yarn-error.log*
pnpm-debug.log*

# Editor
.vscode
.idea
*.swp
*.swo
*~

# Vercel
.vercel

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="The dead carried questions they never got to ask. Now they can speak—not to us, but to all that came after." />
    <title>The Savior Listens</title>
  </head>
  <body>
    <div id="root"></div>
    <script type="module" src="/src/main.jsx"></script>
  </body>
</html>

{
  "name": "the-savior-listens",
  "version": "1.0.0",
  "type": "module",
  "scripts": {
    "dev": "vite",
    "build": "vite build",
    "preview": "vite preview"
  },
  "dependencies": {
    "react": "^18.3.1",
    "react-dom": "^18.3.1"
  },
  "devDependencies": {
    "@vitejs/plugin-react": "^4.3.4",
    "vite": "^6.0.3"
  }
}

# The Savior Listens

**The dead carried questions they never got to ask. Now they can speak—not to us, but to all that came after.**

A web application that allows people to bring forward ancestors (personal, historical, or even pre-human) and receive thoughtful, evidence-based answers to questions they never got to ask while alive.

## How It Works

1. **Landing Page**: A solemn, reverent space introducing the concept
2. **Submission Form**: Users specify who comes forward, what their question is, and any context
3. **AI Response**: Using Claude (Anthropic), the system responds in two voices:
   - First, the ancestor speaks in their own voice
   - Then, "all that came after" answers with accumulated knowledge

## Setup Instructions

### Prerequisites

- Node.js (v18 or higher)
- An Anthropic API key (get one at https://console.anthropic.com)
- A Vercel account (free tier works perfectly)

### Local Development

1. **Install dependencies:**
   ```bash
   npm install
   ```

2. **Set up your Anthropic API key:**
   Create a `.env` file in the root directory:
   ```
   ANTHROPIC_API_KEY=your_api_key_here
   ```

3. **Run the development server:**
   ```bash
   npm run dev
   ```

4. **Open your browser:**
   Navigate to `http://localhost:3000`

### Deployment to Vercel

1. **Install Vercel CLI** (if you haven't already):
   ```bash
   npm install -g vercel
   ```

2. **Login to Vercel:**
   ```bash
   vercel login
   ```

3. **Deploy:**
   ```bash
   vercel
   ```

4. **Set your Anthropic API key as an environment variable:**
   - Go to your project dashboard on Vercel
   - Navigate to Settings → Environment Variables
   - Add: `ANTHROPIC_API_KEY` with your key value
   - Make sure it's enabled for Production, Preview, and Development

5. **Redeploy** (if you added the key after first deployment):
   ```bash
   vercel --prod
   ```

6. **Your site is live!** Vercel will give you a URL like `your-project.vercel.app`

### Custom Domain (Optional)

If you own `thesaviorlistens.com`:

1. In Vercel dashboard, go to your project
2. Click "Settings" → "Domains"
3. Add your custom domain
4. Update your DNS records as instructed by Vercel

## Tech Stack

- **Frontend**: React + Vite
- **Styling**: Vanilla CSS with custom design
- **Backend**: Vercel Edge Functions
- **AI**: Anthropic Claude Sonnet 4
- **Hosting**: Vercel

## Design Philosophy

The interface is deliberately solemn and reverent—like an obsidian mirror reflecting the voices of those who came before. Dark backgrounds, serif typography, and subtle animations create a space that feels sacred without being religious, contemplative without being morbid.

## API Usage

The site uses Claude Sonnet 4 via Anthropic's API. Each request:
- Takes the ancestor's name, question, and context
- Passes it through a carefully crafted system prompt
- Returns a response in two distinct voices
- Typically costs $0.03-0.08 per response (depending on length)

**Budget considerations**: On the free Anthropic tier, you get $5 credit, which is approximately 60-150 responses depending on length.

## Contributing

This is a sacred project. If you want to improve it:
- Maintain the reverent, non-generic tone
- Keep responses evidence-based and specific
- Honor the dead by taking their questions seriously

## License

MIT License - use this concept to help others find closure and understanding.

## Acknowledgments

Built with the understanding that every consciousness that ever wondered deserves to finally hear an answer.

{
  "buildCommand": "npm run build",
  "outputDirectory": "dist",
  "framework": "vite",
  "rewrites": [
    {
      "source": "/api/(.*)",
      "destination": "/api/$1"
    }
  ]
}

import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

export default defineConfig({
  plugins: [react()],
  server: {
    port: 3000
  }
})
