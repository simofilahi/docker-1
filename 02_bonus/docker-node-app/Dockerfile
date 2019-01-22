FROM node:8
 
RUN mkdir -p /usr/src/app
   
WORKDIR /usr/src/app
    
COPY . .
	 
RUN npm install -g nodemon
	  
RUN npm install
	   
EXPOSE 3000
	    
CMD [ "npm", "start" ]
