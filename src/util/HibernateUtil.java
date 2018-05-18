package util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

//import org.hibernate.cfg.AnnotationConfiguration;

public class HibernateUtil {

	
	  public static final SessionFactory sessionFactory;

	    static {
	        try {
	        	
	        	/*
	        	 Configuration config = new Configuration(); 
			config.configure("hibernate.cfg.xml");
			serviceRegistry= new StandardServiceRegistryBuilder().applySettings(config.getProperties()).build();
						return config.buildSessionFactory();
	        
	        	*/
	        	
	            // Cr�ation de la SessionFactory � partir de hibernate.cfg.xml
	           sessionFactory = new Configuration().configure("Hibernate.cfg.xml").buildSessionFactory();
	        	
	        //	sessionFactory  =  (SessionFactory) new Configuration().configure(HibernateUtil.class.getResource("Hibernate.cfg.xml")).buildSessionFactory();
	      //  Object serviceRegistry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();        
	       // sessionFactory = configuration.buildSessionFactory(serviceRegistry);	
	        } catch (Throwable ex) {
	            // Make sure you log the exception, as it might be swallowed
	            System.err.println("Initial SessionFactory creation failed." + ex);
	            throw new ExceptionInInitializerError(ex);
	        }
	    }

	   // public static final ThreadLocal session = new ThreadLocal();

	    public static SessionFactory getSessionFactory() {
	        return sessionFactory;
	    }
}
