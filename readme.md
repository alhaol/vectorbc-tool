# VectorBT Quant Research Lab

Welcome to your professional quantitative research environment. This lab is pre-configured with **VectorBT**, **Numba**, and **Jupyter Lab** to allow for high-performance backtesting and strategy optimization.

## 🚀 Quick Start (Docker)

The fastest way to get started is using Docker. This ensures all system dependencies (C++ compilers for Numba, etc.) are correctly configured.

1. **Clone or Download** this repository to your local machine.
    
2. **Launch the environment**:
    
    ```
    docker-compose up --build
    ```
    
3. **Access Jupyter Lab**: Open your browser and go to [http://localhost:8888](https://www.google.com/search?q=http://localhost:8888 "null"). No token is required by default in this local setup.
    
4. **Stop the environment**:
    
    ```
    docker-compose down
    ```
    

## 🐍 Native Installation (Alternative)

If you prefer to run the project outside of Docker, we recommend using [uv](https://github.com/astral-sh/uv "null") for high-speed dependency management.

1. **Install uv** (if not already installed):
    
    ```
    curl -LsSf [https://astral-sh.uv.install.sh](https://astral-sh.uv.install.sh) | sh
    ```
    
2. **Install dependencies**:
    
    ```
    uv pip install -r pyproject.toml
    ```
    
3. **Launch Jupyter**:
    
    ```
    jupyter lab
    ```
    

## 📂 Project Structure

Below is the layout of the research lab. In a Docker environment, the `notebooks/` directory is mapped as a volume to ensure your work persists on your local machine.

```
.
├── notebooks/                   # Jupyter Notebooks (Development Area)
│   ├── vectorbt_questions.ipynb # Main Masterclass
│   ├── vectorbt_strategies_master.ipynb
│   ├── vectorbt_advanced_simulations.ipynb
│   └── vectorbt_100_questions.ipynb
├── Dockerfile                   # Build instructions for the Python environment
├── docker-compose.yml           # Service orchestration (ports/volumes)
├── pyproject.toml               # Python dependencies (uv/pip)
└── README.md                    # Project documentation
```

## 📚 Notebook Directory

This lab includes four specialized notebooks designed to take you from beginner to advanced quant researcher:

1. **`vectorbt_questions.ipynb` (The Masterclass)**
    
    - **Focus**: Foundational concepts and technical "how-to".
        
    - **Key Topics**: Data fetching, basic indicators, signal generation, and result extraction.
        
    - **Best For**: Learning the syntax and the "VectorBT way" of thinking.
        
2. **`vectorbt_strategies_master.ipynb` (Strategy Library)**
    
    - **Focus**: Practical implementation of industry-standard strategies.
        
    - **Key Topics**: Golden Cross, RSI Mean Reversion, and Bollinger Band Breakouts.
        
    - **Best For**: Seeing how multi-asset backtests work in a real-world context.
        
3. **`vectorbt_advanced_simulations.ipynb` (Institutional Quant)**
    
    - **Focus**: Stress testing, optimization, and risk modeling.
        
    - **Key Topics**: Monte Carlo simulations, Walk-Forward Optimization (WFO), and Regime Switching logic.
        
    - **Best For**: Validating strategy robustness and avoiding overfitting.
        
4. **`vectorbt_100_questions.ipynb` (Investor's Dictionary)**
    
    - **Focus**: Quick-reference solutions for common investor queries.
        
    - **Key Topics**: Volume filtering, fundamental filters (P/E), and trailing stops.
        
    - **Best For**: Rapidly solving specific implementation bottlenecks.
        

## 🛠 Troubleshooting

- **Port 8888 is in use**: If you already have a Jupyter server running, change the port mapping in `docker-compose.yml` (e.g., `"8889:8888"`).
    
- **ImportError (anywidget)**: If you see a widget error, ensure you have run the initialization cell that sets `vbt.settings.plotting['use_widgets'] = False` if you are in a non-interactive environment.
    
- **Frequency Errors**: If a backtest fails with a "Frequency is None" error, remember to call `.vbt.as_freq('D')` on your data before processing.
    

**Developed with VectorBT — High Performance Backtesting.**