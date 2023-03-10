.class public final Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX$DataBean$a;
.super Ljava/lang/Object;
.source "Cartoon.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX$DataBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX$DataBean;

    invoke-direct {v0, p1}, Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX$DataBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX$DataBean;

    return-object p1
.end method
