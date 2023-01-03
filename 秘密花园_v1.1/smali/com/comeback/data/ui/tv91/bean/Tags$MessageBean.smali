.class public Lcom/comeback/data/ui/tv91/bean/Tags$MessageBean;
.super Ljava/lang/Object;
.source "Tags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/tv91/bean/Tags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageBean"
.end annotation


# instance fields
.field public ID:I

.field public Name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/comeback/data/ui/tv91/bean/Tags$MessageBean;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/ui/tv91/bean/Tags$MessageBean;->Name:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getID()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/tv91/bean/Tags$MessageBean;->ID:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/Tags$MessageBean;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public setID(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/tv91/bean/Tags$MessageBean;->ID:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/Tags$MessageBean;->Name:Ljava/lang/String;

    return-void
.end method
