# Add raftos package to PYTHONPATH so we don't need to install it to run example
export PYTHONPATH="${PYTHONPATH}:$(pwd)/../"

# tests
python test_configuration.py

python test_serializers.py