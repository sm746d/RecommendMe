package edu.fullerton.servlet;
 
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.util.Date;
 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.xwpf.usermodel.Borders;
import org.apache.poi.xwpf.usermodel.ParagraphAlignment;
import org.apache.poi.xwpf.usermodel.TextAlignment;
import org.apache.poi.xwpf.usermodel.UnderlinePatterns;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.apache.poi.xwpf.usermodel.XWPFRun;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STLineSpacingRule;

import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.draw.DottedLineSeparator;
import com.itextpdf.text.pdf.draw.VerticalPositionMark;
 
/**
 * ResumeServlet:
 * 		This servlet allows the user to create and download their resumes in the file type & template style of their choice.
 *      This servlet determines the file type then the template style chosen by the user and responds with the respective file type and template style.
 *      Possible file types:
 *      	- PDF
 *      	- DOCX
 *      	- TXT
 *      Possible template styles:
 *      	- Template one
 *      	- Template two
 *      	- Template three
 */
public class ResumeServlet extends HttpServlet {
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        try {
        	// Retrieves values from the GET request to determine what type of file and template to return
        	String fileType = request.getParameter("filetype");
        	String template = request.getParameter("template");
        	
        	/*
        	 * User Information
        	 * 
        	 * 		- Basic information of the user, such as first & last name and email.
        	 */
        	String first_name = "first name test";
        	String last_name = "last name test";
        	String email = "email test";
        	/*
        	 * User Experience
        	 * 
        	 * 		- Work experience of the user, such as positions where they work/worked at previously.
        	 * 
        	 * NOTE:
        	 * Experience 2D array is used to represent a users experience
        	 * The rows in the array (first index) represents each different work experience information
        	 * 		- Rows are limited to 5 past positions.
        	 * The columns in the array (second index) represents each different value
        	 * 		Columns are:
        	 * 			- [0]Job position
        	 * 			- [1]Employer name
        	 * 			- [2]Address
        	 * 			- [3]Start Date
        	 * 			- [4]End Date
        	 * 			- [5]Present
        	 */
        	int exp_row = 5;		// Represents the the amount of user experience positions
        	int exp_col = 6;		// Represents the categories of information for user experience (job position, employer name, etc etc).
        	String [][]experience = new String[exp_row][exp_col];
        	// Initializes dummy values, this will actually be initialized with double for-loops
        	experience[0][0] = "job position test";
        	experience[0][1] = "employer name test";
        	experience[0][2] = "address test";
        	experience[0][3] = "start date test";
        	experience[0][4] = "end date test";
        	experience[0][5] = "present test";
        	
        	/*
        	 *  User Skills
        	 *  
        	 *  	- Generic skills about the user along with a description.
        	 */
        	int ski_row = 5; 		// Represents the amount of user skills
        	int ski_col = 2;		// Represents the categories of information for user skills (skill name, description)
        	String [][]skill = new String[ski_row][ski_col];
        	// Initializes dummy values, this will actually be initialized with double for-loops
        	skill[0][0] = "skill name test";
        	skill[0][1] = "description test";
        	
        	/*
        	 * 	User Education
        	 * 
        	 * 		- Education information such as school, degree, etc etc.
        	 */
        	String school_name = "school name test";
        	String degree_certificate = "degree / certificate test";
        	String major = "major test";
        	String grad_date = "graduation date test";
        	
        	
        	// Determines which file type is chosen (PDF, DOC, OR TXT)
        	switch(fileType)
    		{
    		case "pdf":
    			// Sets the content type header as a PDF file on the response
    			response.setContentType("application/pdf");
    			response.setHeader("Content-disposition","attachment; filename=resume.pdf");
    			// Create and set up the document
                Document document = new Document();
                PdfWriter.getInstance(document, response.getOutputStream());
                document.open();
                
                /*
                 * Creates all chunks needed for the pdf document
                 */
                // Line separator
                DottedLineSeparator separator = new DottedLineSeparator();
                separator.setPercentage(59500f / 523f);
                Chunk linebreak = new Chunk(separator);
    			// Glue for right side alignment
                Chunk glue = new Chunk(new VerticalPositionMark());
                
                /*
				 * Create all paragraphs & tables needed for the pdf document
				 */
                // Left-Aligned name & email paragraphs
                Paragraph name_left_para = new Paragraph(first_name + " " + last_name);
                Paragraph email_left_para = new Paragraph(email);
                
                // Center-Aligned name & email tables
                PdfPTable name_table = new PdfPTable(1);
                name_table.setWidthPercentage(100);
                name_table.addCell(getCell(first_name + " " + last_name, PdfPCell.ALIGN_CENTER));
                PdfPTable email_table = new PdfPTable(1);
                email_table.setWidthPercentage(100);
                email_table.addCell(getCell(email, PdfPCell.ALIGN_CENTER));
                
                
                // Right-Aligned name & email paragraphs
                Paragraph name_right_para = new Paragraph();
                name_right_para.add(new Chunk(glue));
                name_right_para.add(first_name + " " + last_name);
                Paragraph email_right_para = new Paragraph();
                email_right_para.add(new Chunk(glue));
                email_right_para.add(email);
                
                // Section title paragraphs 
                Paragraph skill_title = new Paragraph("SKILLS");
                Paragraph exp_title = new Paragraph("EXPERIENCE");
                Paragraph edu_title = new Paragraph("EDUCATION");
                
                // User Skills table
                PdfPTable skill_table = new PdfPTable(2);
                skill_table.setWidthPercentage(100);
                
                // User Experience table
                PdfPTable exp_table = new PdfPTable(5);
                exp_table.setWidthPercentage(100);
                
                // User Education table
                PdfPTable edu_table_1 = new PdfPTable(2);
                PdfPTable edu_table_2 = new PdfPTable(2);
                edu_table_1.setWidthPercentage(100);
                edu_table_2.setWidthPercentage(100);
                
                edu_table_1.addCell(getCell(degree_certificate, PdfPCell.ALIGN_LEFT));
                edu_table_1.addCell(getCell(major, PdfPCell.ALIGN_RIGHT));
                edu_table_2.addCell(getCell(school_name, PdfPCell.ALIGN_LEFT));
                edu_table_2.addCell(getCell(grad_date, PdfPCell.ALIGN_RIGHT));
                
    			// Determines which template is chosen (ONE, TWO, OR THREE)
    			switch(template)
    			{
    			case "templateOne":
                    /*
                     * 	Template Style One
                     * 
                     * 		- Adds all content to the pdf document according to this template style
                     */
    				// User Information
                    document.add(name_left_para);
                    document.add(email_left_para);
                    document.add(linebreak);
                    
                    // User skills
                    document.add(skill_title);
                    
                    for(int x = 0; x < ski_row; x++)
                    {
                    	for(int y = 0; y < ski_col; y++)
                    	{
                    		// Checks to see if there is content in the current array index
                    		if(skill[x][y] != null && !(skill[x][y].isEmpty()))
                    		{	
                    			if(y==0)
                    			{
                    				skill_table.addCell(getCell(skill[x][y], PdfPCell.ALIGN_LEFT));
                    			}
                    			else
                    			{
                    				skill_table.addCell(getCell(skill[x][y], PdfPCell.ALIGN_RIGHT));
                    			}
                    			
                    		}
                    	}
                    }
                    
                    document.add(skill_table);                
                                        
                    // User experience
                    document.add(exp_title);
                    
                    for(int x = 0; x < exp_row; x++)
                    {
                    	for(int y = 0; y < exp_col; y++)
                    	{
                    		// Checks to see if there is content in the current array index
                    		if(experience[x][y] != null && !(experience[x][y].isEmpty()))
                    		{	
                    			exp_table.addCell(getCell(experience[x][y], PdfPCell.ALIGN_CENTER));                   			
                    		}
                    	}
                    }                
                    document.add(exp_table);
                    
                    // User education
                    document.add(edu_title);                 
                    document.add(edu_table_1);
                    document.add(edu_table_2);
    				
    				break;
    			case "templateTwo":
    				/*
                     * 	Template Style Two
                     * 
                     * 		- Adds all content to the pdf document according to this template style
                     */
    				// User Information
                    document.add(name_right_para);
                    document.add(email_right_para);
                    document.add(linebreak);
                    
                    // User experience
                    document.add(exp_title);
                    
                    for(int x = 0; x < exp_row; x++)
                    {
                    	for(int y = 0; y < exp_col; y++)
                    	{
                    		// Checks to see if there is content in the current array index
                    		if(experience[x][y] != null && !(experience[x][y].isEmpty()))
                    		{	
                    			exp_table.addCell(getCell(experience[x][y], PdfPCell.ALIGN_CENTER));                   			
                    		}
                    	}
                    }                    
                    document.add(exp_table);
                    
                    // User skills
                    document.add(skill_title);
                    
                    for(int x = 0; x < ski_row; x++)
                    {
                    	for(int y = 0; y < ski_col; y++)
                    	{
                    		// Checks to see if there is content in the current array index
                    		if(skill[x][y] != null && !(skill[x][y].isEmpty()))
                    		{	
                    			if(y==0)
                    			{
                    				skill_table.addCell(getCell(skill[x][y], PdfPCell.ALIGN_LEFT));
                    			}
                    			else
                    			{
                    				skill_table.addCell(getCell(skill[x][y], PdfPCell.ALIGN_RIGHT));
                    			}
                    			
                    		}
                    	}
                    }
                    
                    document.add(skill_table);                                       
                    
                    // User education
                    document.add(edu_title);
                    document.add(edu_table_1);
                    document.add(edu_table_2);
                    
    				break;
    			case "templateThree":
    				/*
                     * 	Template Style Three
                     * 
                     * 		- Adds all content to the pdf document according to this template style
                     */
    				// User Information
    				document.add(name_table);
    				document.add(email_table);
    				document.add(linebreak);
    				
    				// User education
                    document.add(edu_title);                   
                    document.add(edu_table_1);
                    document.add(edu_table_2);
    				
    				// User skills
                    document.add(skill_title);
                    
                    for(int x = 0; x < ski_row; x++)
                    {
                    	for(int y = 0; y < ski_col; y++)
                    	{
                    		// Checks to see if there is content in the current array index
                    		if(skill[x][y] != null && !(skill[x][y].isEmpty()))
                    		{	
                    			if(y==0)
                    			{
                    				skill_table.addCell(getCell(skill[x][y], PdfPCell.ALIGN_LEFT));
                    			}
                    			else
                    			{
                    				skill_table.addCell(getCell(skill[x][y], PdfPCell.ALIGN_RIGHT));
                    			}
                    			
                    		}
                    	}
                    }                    
                    document.add(skill_table);                    
                    
                    // User experience
                    document.add(exp_title);
                    
                    for(int x = 0; x < exp_row; x++)
                    {
                    	for(int y = 0; y < exp_col; y++)
                    	{
                    		// Checks to see if there is content in the current array index
                    		if(experience[x][y] != null && !(experience[x][y].isEmpty()))
                    		{	
                    			exp_table.addCell(getCell(experience[x][y], PdfPCell.ALIGN_CENTER));                   			
                    		}
                    	}
                    }                   
                    document.add(exp_table);
    				
    				break;
				default:
    				break;
    			}
                
                // Close the pdf document
                document.close();
                
    			break;
    		case "docx":
    			// Sets the content type header as a DOC file on the response
    			response.setContentType("application/msword");
    			response.setHeader("Content-disposition","attachment; filename=resume.docx");
    			
    			// Create Document
			    XWPFDocument docx = new XWPFDocument();
			    
			    //Write the Document in file system
		        FileOutputStream out_docx = new FileOutputStream("resume.docx");
    			
			    /*
                 * Creates all paragraphs & runs needed for docx document
                 */
                XWPFParagraph name_email_p = docx.createParagraph();
                
                XWPFRun name_email_r = name_email_p.createRun();
                name_email_r.setBold(true);
                name_email_r.setFontFamily("Courier");
                name_email_r.setText(first_name + " " + last_name + ", " + email);
                name_email_r.setUnderline(UnderlinePatterns.SINGLE);
                name_email_r.setTextPosition(100);
                			    
    			// Determines which template is chosen (ONE, TWO, OR THREE)
    			switch(template)
    			{
    			case "templateOne":
    				// User name and email
    				name_email_p.setAlignment(ParagraphAlignment.LEFT);
    				
    				// Creates the resume in template one order
    				XWPFParagraph skills_p1 = docx.createParagraph();
                    XWPFParagraph exp_p1 = docx.createParagraph();
                    XWPFParagraph edu_p1 = docx.createParagraph();
    				
    				
    				XWPFRun skills_r1 = skills_p1.createRun();
                    skills_r1.setBold(true);
                    skills_r1.setFontFamily("Courier");
                    
                    XWPFRun exp_r1 = exp_p1.createRun();
                    exp_r1.setBold(true);
                    exp_r1.setFontFamily("Courier");
                    
                    XWPFRun edu_r1 = edu_p1.createRun();
                    edu_r1.setBold(true);
                    edu_r1.setFontFamily("Courier");
    				
    				// User skills
    				skills_r1.setText("SKILLS");
    				skills_r1.addBreak();
    				for(int x = 0; x < ski_row; x++)
                    {
                    	for(int y = 0; y < ski_col; y++)
                    	{
                    		// Checks to see if there is content in the current array index
                    		if(skill[x][y] != null && !(skill[x][y].isEmpty()))
                    		{	
                    			if(y==0)
                    			{
                    				skills_r1.setText(skill[x][y] + ": ");
                    			}
                    			else
                    			{
                    				skills_r1.setText(skill[x][y] + ". ");
                    			}
                    		}
                    	}
                    }
    				
    				// User experience
    				exp_r1.setText("EXPERIENCE");
    				exp_r1.addBreak();
    				for(int x = 0; x < exp_row; x++)
                    {
                    	for(int y = 0; y < exp_col; y++)
                    	{
                    		// Checks to see if there is content in the current array index
                    		if(experience[x][y] != null && !(experience[x][y].isEmpty()))
                    		{	
                    			// If the current index isn't the last one in the column
                    			if(y<exp_col-1)
                    			{
                    				exp_r1.setText(experience[x][y] + ", ");
                    			}
                    			else
                    			{
                    				exp_r1.setText(experience[x][y] + ". ");
                    			}
                    			                   			
                    		}
                    	}
                    }
    				
    				// User education
    				edu_r1.setText("EDUCATION");
    				edu_r1.addBreak();
    				edu_r1.setText(major +  " " + degree_certificate + " " + school_name + " " + grad_date);
    				
    				break;
    			case "templateTwo":
    				// User name and email
    				name_email_p.setAlignment(ParagraphAlignment.RIGHT);
    				
    				// Creates the resume in template two order
    				XWPFParagraph exp_p2 = docx.createParagraph();
    				XWPFParagraph skills_p2 = docx.createParagraph();
                    XWPFParagraph edu_p2 = docx.createParagraph();
    				
    				XWPFRun exp_r2 = exp_p2.createRun();
                    exp_r2.setBold(true);
                    exp_r2.setFontFamily("Courier");
    				
    				XWPFRun skills_r2 = skills_p2.createRun();
                    skills_r2.setBold(true);
                    skills_r2.setFontFamily("Courier");
                    
                    XWPFRun edu_r2 = edu_p2.createRun();
                    edu_r2.setBold(true);
                    edu_r2.setFontFamily("Courier");
    				
    				// User experience
    				exp_r2.setText("EXPERIENCE");
    				exp_r2.addBreak();
    				for(int x = 0; x < exp_row; x++)
                    {
                    	for(int y = 0; y < exp_col; y++)
                    	{
                    		// Checks to see if there is content in the current array index
                    		if(experience[x][y] != null && !(experience[x][y].isEmpty()))
                    		{	
                    			// If the current index isn't the last one in the column
                    			if(y<exp_col-1)
                    			{
                    				exp_r2.setText(experience[x][y] + ", ");
                    			}
                    			else
                    			{
                    				exp_r2.setText(experience[x][y] + ". ");
                    			}
                    			                   			
                    		}
                    	}
                    }
    				
    				// User skills
    				skills_r2.setText("SKILLS");
    				skills_r2.addBreak();
    				for(int x = 0; x < ski_row; x++)
                    {
                    	for(int y = 0; y < ski_col; y++)
                    	{
                    		// Checks to see if there is content in the current array index
                    		if(skill[x][y] != null && !(skill[x][y].isEmpty()))
                    		{	
                    			if(y==0)
                    			{
                    				skills_r2.setText(skill[x][y] + ": ");
                    			}
                    			else
                    			{
                    				skills_r2.setText(skill[x][y] + ". ");
                    			}
                    		}
                    	}
                    }
    				
    				// User education
    				edu_r2.setText("EDUCATION");
    				edu_r2.addBreak();
    				edu_r2.setText(major +  " " + degree_certificate + " " + school_name + " " + grad_date);
    				
    				break;
    			case "templateThree":
    				// User name and email
    				name_email_p.setAlignment(ParagraphAlignment.CENTER);
    				
    				// Creates the resume in template three order
    				XWPFParagraph edu_p3 = docx.createParagraph();
    				XWPFParagraph skills_p3 = docx.createParagraph();
    				XWPFParagraph exp_p3 = docx.createParagraph();
    				
    				XWPFRun edu_r3 = edu_p3.createRun();
                    edu_r3.setBold(true);
                    edu_r3.setFontFamily("Courier");
    				
    				XWPFRun skills_r3 = skills_p3.createRun();
                    skills_r3.setBold(true);
                    skills_r3.setFontFamily("Courier");
                    
                    XWPFRun exp_r3 = exp_p3.createRun();
                    exp_r3.setBold(true);
                    exp_r3.setFontFamily("Courier");
                    	
    				// User education
    				edu_r3.setText("EDUCATION");
    				edu_r3.addBreak();
    				edu_r3.setText(major +  " " + degree_certificate + " " + school_name + " " + grad_date);
    				
    				// User skills
    				skills_r3.setText("SKILLS");
    				skills_r3.addBreak();
    				for(int x = 0; x < ski_row; x++)
                    {
                    	for(int y = 0; y < ski_col; y++)
                    	{
                    		// Checks to see if there is content in the current array index
                    		if(skill[x][y] != null && !(skill[x][y].isEmpty()))
                    		{	
                    			if(y==0)
                    			{
                    				skills_r3.setText(skill[x][y] + ": ");
                    			}
                    			else
                    			{
                    				skills_r3.setText(skill[x][y] + ". ");
                    			}
                    		}
                    	}
                    }
    				
    				// User experience
    				exp_r3.setText("EXPERIENCE");
    				exp_r3.addBreak();
    				for(int x = 0; x < exp_row; x++)
                    {
                    	for(int y = 0; y < exp_col; y++)
                    	{
                    		// Checks to see if there is content in the current array index
                    		if(experience[x][y] != null && !(experience[x][y].isEmpty()))
                    		{	
                    			// If the current index isn't the last one in the column
                    			if(y<exp_col-1)
                    			{
                    				exp_r3.setText(experience[x][y] + ", ");
                    			}
                    			else
                    			{
                    				exp_r3.setText(experience[x][y] + ". ");
                    			}
                    			                   			
                    		}
                    	}
                    }
    				
    				break;
				default:
    				break;
    			}
    			// Close docx document
    			docx.write(response.getOutputStream());
		        out_docx.close();
		        
    			break;
    		case "txt":
    			// Sets the content type header as a TXT file on the response
    			response.setContentType("text/plain");
    			response.setHeader("Content-disposition","attachment; filename=resume.txt");
    			// Creates the txt file
    			PrintWriter writer = new PrintWriter("resume.txt", "UTF-8");
    			File txt_file = new File("resume.txt");
    			
    			// User info
			    writer.println(first_name + " " + last_name);
			    writer.println(email);
    			
    			// Determines which template is chosen (ONE, TWO, OR THREE)
    			switch(template)
    			{
    			case "templateOne":
				    // User skills
				    writer.println("");
				    writer.println("SKILLS");
				    writer.println("");
				    for(int x = 0; x < ski_row; x++)
                    {
                    	for(int y = 0; y < ski_col; y++)
                    	{
                    		// Checks to see if there is content in the current array index
                    		if(skill[x][y] != null && !(skill[x][y].isEmpty()))
                    		{	
                    			writer.println(skill[x][y]);
                    		}
                    	}
                    }
				    // User experience
				    writer.println("");
				    writer.println("EXPERIENCE");
				    writer.println("");
				    for(int x = 0; x < exp_row; x++)
                    {
                    	for(int y = 0; y < exp_col; y++)
                    	{
                    		// Checks to see if there is content in the current array index
                    		if(experience[x][y] != null && !(experience[x][y].isEmpty()))
                    		{	
                    			writer.println(experience[x][y]);                   			
                    		}
                    	}
                    }
				    // User education
				    writer.println("");
				    writer.println("EDUCATION");
				    writer.println("");
				    writer.println(degree_certificate);
				    writer.println(major);
				    writer.println(school_name);
				    writer.println(grad_date);
				    
    				break;
    			case "templateTwo":
    				// User experience
				    writer.println("");
				    writer.println("EXPERIENCE");
				    writer.println("");
				    for(int x = 0; x < exp_row; x++)
                    {
                    	for(int y = 0; y < exp_col; y++)
                    	{
                    		// Checks to see if there is content in the current array index
                    		if(experience[x][y] != null && !(experience[x][y].isEmpty()))
                    		{	
                    			writer.println(experience[x][y]);                   			
                    		}
                    	}
                    }
				    
				    // User skills
				    writer.println("");
				    writer.println("SKILLS");
				    writer.println("");
				    for(int x = 0; x < ski_row; x++)
                    {
                    	for(int y = 0; y < ski_col; y++)
                    	{
                    		// Checks to see if there is content in the current array index
                    		if(skill[x][y] != null && !(skill[x][y].isEmpty()))
                    		{	
                    			writer.println(skill[x][y]);
                    		}
                    	}
                    }
				    
				    // User education
				    writer.println("");
				    writer.println("EDUCATION");
				    writer.println("");
				    writer.println(degree_certificate);
				    writer.println(major);
				    writer.println(school_name);
				    writer.println(grad_date);

    				break;
    			case "templateThree":
    				// User education
				    writer.println("");
				    writer.println("EDUCATION");
				    writer.println("");
				    writer.println(degree_certificate);
				    writer.println(major);
				    writer.println(school_name);
				    writer.println(grad_date);
				    
				    // User skills
				    writer.println("");
				    writer.println("SKILLS");
				    writer.println("");
				    for(int x = 0; x < ski_row; x++)
                    {
                    	for(int y = 0; y < ski_col; y++)
                    	{
                    		// Checks to see if there is content in the current array index
                    		if(skill[x][y] != null && !(skill[x][y].isEmpty()))
                    		{	
                    			writer.println(skill[x][y]);
                    		}
                    	}
                    }
				    
    				// User experience
				    writer.println("");
				    writer.println("EXPERIENCE");
				    writer.println("");
				    for(int x = 0; x < exp_row; x++)
                    {
                    	for(int y = 0; y < exp_col; y++)
                    	{
                    		// Checks to see if there is content in the current array index
                    		if(experience[x][y] != null && !(experience[x][y].isEmpty()))
                    		{	
                    			writer.println(experience[x][y]);                   			
                    		}
                    	}
                    }
				    
    				break;
				default:
    				break;
    			}
    			// Closes the txt file
    			writer.close();
    			
    			// Writes the txt file to the outputstream
    			OutputStream out_txt = response.getOutputStream();
    			FileInputStream in = new FileInputStream(txt_file);
    			byte[] buffer = new byte[4096];
    			int length;
    			while ((length = in.read(buffer)) > 0){
    			    out_txt.write(buffer, 0, length);
    			}
    			in.close();
    			out_txt.flush();
    			
    			break;
    		default:
    			System.out.println("Application does not support this filetype! Only supports: pdf, word, or txt files");
    			break;
    		}
        } catch (DocumentException de) {
            throw new IOException(de.getMessage());
        }
    }
    
    private PdfPCell getCell(String text, int alignment) {
        PdfPCell cell = new PdfPCell(new Phrase(text));
        cell.setPadding(3);
        cell.setHorizontalAlignment(alignment);
        cell.setBorder(PdfPCell.NO_BORDER);
        return cell;
    }
    
    /**
     * A serial version uid
     */
    private static final long serialVersionUID = 4262544639420765610L;
}