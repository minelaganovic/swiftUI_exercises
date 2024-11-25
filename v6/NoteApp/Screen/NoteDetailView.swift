//
//  NoteDetailView.swift
//  NoteApp
//
//  Created by MacLab10 on 5.11.24..
//

import SwiftUI
import PDFKit

struct NoteDetailView: View {
    let note:Note
    
    var body: some View {
        VStack(alignment:.leading, spacing: 20){
            
            Text(note.title)
                .font(.largeTitle)
                .bold()
                .foregroundColor(.blue)
            
            
            Text(note.date,style: .date)
                .font(.subheadline)
            
            Divider()
            
            Text(note.category)
                .font(.body)
                .foregroundColor(.red)
            
            Text(note.content)
                .font(.body)
            
            Spacer()
            HStack{
                Button(action:saveAsPDFToDocument )
                {
                    Text("Save to pdf")
                        .font(.headline)
                        .padding()
                        .foregroundColor(.red)
                        .cornerRadius(8)
                }
            }
        }
        .padding(20)
    }
    
    func saveAsPDFToDocument(){
        saveAsPDF(directory: .documentDirectory)
    }
    
    func saveAsPDF(directory:FileManager.SearchPathDirectory)
    {
        let folderURL=FileManager.default.urls(for: directory, in: .userDomainMask)[0].appendingPathComponent("\(note.title).pdf")
        
        let pdfDocument = PDFDocument()
        let pageRect=CGRect(x:0,y: 0, width: 600, height: 700)
        let pdfPage = PDFPage()
        
        let renderer=UIGraphicsImageRenderer(size: pageRect.size)
        let pageImage=renderer.image{
            ctx in
            let atributs:[NSAttributedString.Key:Any] = [
                .font:UIFont.systemFont(ofSize: 16),
                .foregroundColor:UIColor.black
            ]
            
            let fullText="\(note.title)\n\(note.date.formatted())\n\n\(note.content)"
            fullText.draw(in: CGRect(x:20,y:20,width: pageRect.width-40, height: pageRect.height-40),withAttributes:atributs)
        }
        
        if let pdfPage = PDFPage(image: pageImage) {
            pdfDocument.insert(pdfPage, at: 0)
            
            do {
                try pdfDocument.write(to: folderURL)
                print("PDF saved to \(directory == .desktopDirectory ? "Desktop" : "Documents"): \(folderURL)")
            } catch {
                print("Failed to save PDF: \(error)")
            }
        } else {
            print("Failed to create PDF page")
        }
   
    }
}

struct NoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let primerNote=Note(title:"Primer", content: "Opis", date:Date(), category:"primer1")
        NoteDetailView(note: primerNote)
    }
}
