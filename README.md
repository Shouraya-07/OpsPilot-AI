# OpsPilot AI

OpsPilot AI is a full-stack operations dashboard with an AI-assisted workflow layer.
It combines a React + Vite frontend with a FastAPI backend for chat, dataset upload, and
operation KPI endpoints.

## Tech Stack

- Frontend: React 18, TypeScript, Vite
- Backend: FastAPI, Uvicorn, Pydantic
- Data: CSV/JSON/XLSX upload support (optional pandas-enhanced processing)

## Project Structure

```
.
├── data/                   # Sample and uploaded operation datasets
│   └── sample_data.csv
├── src/                    # Frontend app source
│   ├── components/
│   ├── hooks/
│   ├── services/
│   └── styles/
├── index.html              # Vite entry HTML
├── main.py                 # FastAPI backend (runs on port 8002)
├── package.json            # Frontend dependencies and scripts
├── requirements.txt        # Backend Python dependencies
├── start.sh                # Linux/macOS helper to run backend + frontend
├── start.bat               # Windows helper to run backend + frontend
├── test_api.sh             # Linux/macOS API smoke test
├── test_api.bat            # Windows API smoke test
├── tsconfig.json
├── tsconfig.node.json
└── vite.config.ts
```

## Prerequisites

- Node.js 18+
- Python 3.10+
- npm and pip

## Local Setup

1. Install frontend dependencies:

```bash
npm install
```

2. Install backend dependencies:

```bash
pip install -r requirements.txt
```

## Run the App

### Option 1: Start manually (recommended)

Terminal 1:

```bash
python3 main.py
```

Terminal 2:

```bash
npm run dev
```

### Option 2: Use helper scripts

- Linux/macOS: `./start.sh`
- Windows: `start.bat`

## Endpoints

- Frontend: http://localhost:5173
- Backend API: http://localhost:8002
- API docs: http://localhost:8002/docs

## Useful Commands

```bash
# frontend dev
npm run dev

# frontend production build
npm run build

# backend test smoke check (requires backend running)
./test_api.sh
```

## Notes

- The backend stores uploaded files in `data/`.
- AI model loading is currently placeholder-driven unless a compatible GGUF runtime is wired in.
- If you switch machines or OS targets, rerun dependency installation before starting.