#Start with an image that already has Python 3.11 installed.
FROM python:3.11   

#This creates/uses a dir inside a docker image. From this point onwards Docker works inside fapp.
WORKDIR /fapp 

#Copy it into the current working directory // copy the requirements and install the dependencies first.
COPY requirements.txt .    

RUN pip install -r requirements.txt

 #This copies the rest of your application files into /fapp.
COPY . .  

#Tell Docker the application uses port 5000.
EXPOSE 5000     

#Start the Flask application when the container starts.
CMD ["python","fapp.py"]     
