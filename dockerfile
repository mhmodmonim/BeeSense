FROM python:3.10

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . /app/

# Set environment variables
ENV DJANGO_SETTINGS_MODULE=BeeSense.settings

# Run migrations and collect static files
RUN python manage.py migrate
RUN python manage.py collectstatic --noinput

# Expose the port
EXPOSE 8000

# Command to run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


#For production, it’s better to use a WSGI server like Gunicorn:
#CMD ["gunicorn", "myproject.wsgi:application", "--bind", "0.0.0.0:8000"]


