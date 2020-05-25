
while(1)

    fprintf('\n1.Open');
    fprintf('\n2.Rotate');
    fprintf('\n3.Crop');
    fprintf('\n4.Sepia');
    fprintf('\n5.PurpleHand');
    fprintf('\n6.RedRanger');
    fprintf('\n7.Bluebell');
    fprintf('\n8.GreenApple');
    fprintf('\n9.BleedYellow(CSK spl)');
    fprintf('\n10.Blur');
    fprintf('\n11.Increase Contrast');
    fprintf('\n12.WonWon');
    fprintf('\n13.AddText');
    fprintf('\n14.View Histogram');
    fprintf('\n15.Save');
    fprintf('\n16.Undo');
    fprintf('\n17.Exit');

    c=input('\nEnter your choice');
    
    switch c
        case 1
            filename=input('Enter the filename along with path','s');
            newimage=imread(filename);
            imshow(newimage)
        case 2
            rotamt=input('Enter the rotate amount in anticlockwise direction');
            newimage=imrotate(undoimage,rotamt);
            oldimage=undoimage;
            imshow(newimage)
        case 3
            newimage=imcrop(undoimage);
            oldimage=undoimage;
            imshow(newimage)
        case 4
            dundoimage=double(undoimage);
            inr=dundoimage(:,:,1);
            ing=dundoimage(:,:,2);
            inb=dundoimage(:,:,3);
            outr=(inr*.393)+(ing*.769)+(inb*.189);
            outg=(inr*.349)+(ing*.686)+(inb*.168);
            outb=(inr*.272)+(ing*.534)+(inb*.131);
            newimage=uint8(cat(3,outr,outg,outb));
            oldimage=undoimage;
            imshow(newimage)
        case 5
            dundoimage=double(undoimage);
            inr=dundoimage(:,:,1);
            ing=dundoimage(:,:,2);
            inb=dundoimage(:,:,3);
            outr=(inr*.363)+(ing*.579)+(inb*.149);
            outg=(inr*.289)+(ing*.286)+(inb*.268);
            outb=(inr*.872)+(ing*.834)+(inb*.831);
            newimage=uint8(cat(3,outr,outg,outb));
            oldimage=undoimage;
            imshow(newimage)
        case 6
            dundoimage=double(undoimage);
            inr=dundoimage(:,:,1);
            ing=dundoimage(:,:,2);
            inb=dundoimage(:,:,3);
            outr=(inr*.963)+(ing*.979)+(inb*.949);
            outg=(inr*.389)+(ing*.286)+(inb*.268);
            outb=(inr*.272)+(ing*.234)+(inb*.331);
            newimage=uint8(cat(3,outr,outg,outb));
            oldimage=undoimage;
            imshow(newimage)
        case 7
            dundoimage=double(undoimage);
            inr=dundoimage(:,:,1);
            ing=dundoimage(:,:,2);
            inb=dundoimage(:,:,3);
            outr=(inr*.363)+(ing*.579)+(inb*.149);
            outg=(inr*.789)+(ing*.686)+(inb*.568);
            outb=(inr*.872)+(ing*.834)+(inb*.831);
            newimage=uint8(cat(3,outr,outg,outb));
            oldimage=undoimage;
            imshow(newimage)
        case 8
            dundoimage=double(undoimage);
            inr=dundoimage(:,:,1);
            ing=dundoimage(:,:,2);
            inb=dundoimage(:,:,3);
            outr=(inr*.363)+(ing*.279)+(inb*.149);
            outg=(inr*.689)+(ing*.586)+(inb*.568);
            outb=(inr*.272)+(ing*.234)+(inb*.231);
            newimage=uint8(cat(3,outr,outg,outb));
            oldimage=undoimage;
            imshow(newimage)
        case 9
            dundoimage=double(undoimage);
            inr=dundoimage(:,:,1);
            ing=dundoimage(:,:,2);
            inb=dundoimage(:,:,3);
            outr=(inr*.363)+(ing*.379)+(inb*.349);
            outg=(inr*.389)+(ing*.286)+(inb*.368);
            outb=(inr*.0)+(ing*.0)+(inb*.0);
            newimage=uint8(cat(3,outr,outg,outb));
            oldimage=undoimage;
            imshow(newimage)
        case 10
            len=21;
            theta=11;
            psf=fspecial(('motion'),len,theta);
            newimage=imfilter(undoimage,psf);
            imshow(newimage)
        case 11
            newimage=imadjust(undoimage,[0 .3 0;.3 .5 .7],[]);
            imshow(newimage)
        case 12
            dundoimage=double(undoimage);
            inr=dundoimage(:,:,1);
            ing=dundoimage(:,:,2);
            inb=dundoimage(:,:,3);
            outr=(inr*.593)+(ing*.569)+(inb*.689);
            outg=(inr*.549)+(ing*.586)+(inb*.268);
            outb=(inr*.572)+(ing*.534)+(inb*.531);
            newimage=uint8(cat(3,outr,outg,outb));
            oldimage=undoimage;
            newimage=imadjust(newimage,[0 .3 0;.3 .5 .7],[]);
            imshow(newimage)
        case 13
            txt=input('Enter the text','s');
            fs=input('Font Size');
            txtclr=input('Text Color','s');
            bxclr=input('Box Color','s');
            newimage=insertText(newimage,[100 315],txt,'FontSize',fs,'TextColor',txtclr,'BoxColor',bxclr);
            imshow(newimage);
        case 14
             imhist(undoimage);
        case 15
            save=input('Enter the name of the image along with extension','s');
            imwrite(undoimage,save);
        case 16
            newimage=oldimage;
            imshow(newimage)
        case 17
            exit
    end
    undoimage=newimage;
    
end
   
            
            
    