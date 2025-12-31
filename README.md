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
