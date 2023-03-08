.class public Lcom/comeback/data/ui/fengliu/MyFengliuActivity$b;
.super Ljava/lang/Object;
.source "MyFengliuActivity.java"

# interfaces
.implements Lf/f/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/fengliu/MyFengliuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fengliu/MyFengliuActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/fengliu/MyFengliuActivity$b;->a:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/comeback/data/ui/fengliu/MyFengliuActivity$b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/MyFengliuActivity$b;->a:Ljava/lang/String;

    return-object v0
.end method
