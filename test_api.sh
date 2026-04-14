#!/bin/bash
# Test script to verify all functionality

echo "🧪 Testing Honeywell Terminal Manager"
echo "======================================"

# Test backend health
echo "1. Testing Backend API..."
curl -s http://localhost:8002/ | python -m json.tool || echo "❌ Backend not responding"

echo -e "\n2. Testing Chat API..."
curl -s -X POST http://localhost:8002/api/chat \
  -H "Content-Type: application/json" \
  -d '{"message": "Hello", "operation_type": "terminal"}' | python -m json.tool || echo "❌ Chat API not working"

echo -e "\n3. Testing Operation Data API..."
curl -s http://localhost:8002/api/operation-data/terminal | python -m json.tool || echo "❌ Operation Data API not working"

echo -e "\n4. Testing Datasets API..."
curl -s http://localhost:8002/api/datasets | python -m json.tool || echo "❌ Datasets API not working"

echo -e "\n5. Frontend Status..."
if curl -s http://localhost:3000 > /dev/null; then
    echo "✅ Frontend is running on http://localhost:3000"
else
    echo "❌ Frontend not accessible"
fi

echo -e "\n🎉 Test completed!"
echo "Access your application at: http://localhost:3000"