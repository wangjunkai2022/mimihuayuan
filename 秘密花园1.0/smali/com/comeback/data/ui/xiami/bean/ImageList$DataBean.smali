.class public Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;
.super Ljava/lang/Object;
.source "ImageList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/xiami/bean/ImageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public addTime:J

.field public categoryTitle:Ljava/lang/String;

.field public galleryCounts:Ljava/lang/String;

.field public galleryId:Ljava/lang/String;

.field public galleryImage:Ljava/lang/String;

.field public galleryTitle:Ljava/lang/String;

.field public galleryViews:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean$a;

    invoke-direct {v0}, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean$a;-><init>()V

    sput-object v0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->galleryId:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->galleryTitle:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->galleryImage:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->galleryViews:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->categoryTitle:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->galleryCounts:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->addTime:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->addTime:J

    return-wide v0
.end method

.method public getCategoryTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->categoryTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getGalleryCounts()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0ufS"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->galleryCounts:Ljava/lang/String;

    const-string v2, "0t7D"

    invoke-static {v0, v1, v2}, Lf/b/a/a/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGalleryId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->galleryId:Ljava/lang/String;

    return-object v0
.end method

.method public getGalleryImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->galleryImage:Ljava/lang/String;

    return-object v0
.end method

.method public getGalleryTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->galleryTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getGalleryViews()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->galleryViews:Ljava/lang/String;

    return-object v0
.end method

.method public setAddTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->addTime:J

    return-void
.end method

.method public setCategoryTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->categoryTitle:Ljava/lang/String;

    return-void
.end method

.method public setGalleryCounts(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->galleryCounts:Ljava/lang/String;

    return-void
.end method

.method public setGalleryId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->galleryId:Ljava/lang/String;

    return-void
.end method

.method public setGalleryImage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->galleryImage:Ljava/lang/String;

    return-void
.end method

.method public setGalleryTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->galleryTitle:Ljava/lang/String;

    return-void
.end method

.method public setGalleryViews(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->galleryViews:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->galleryId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->galleryTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->galleryImage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->galleryViews:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->categoryTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->galleryCounts:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-wide v0, p0, Lcom/comeback/data/ui/xiami/bean/ImageList$DataBean;->addTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
