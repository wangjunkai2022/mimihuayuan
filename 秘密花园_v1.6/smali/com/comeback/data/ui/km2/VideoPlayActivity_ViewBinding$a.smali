.class public Lcom/comeback/data/ui/km2/VideoPlayActivity_ViewBinding$a;
.super Ld/c/b;
.source "VideoPlayActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/km2/VideoPlayActivity_ViewBinding;-><init>(Lcom/comeback/data/ui/km2/VideoPlayActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/km2/VideoPlayActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/km2/VideoPlayActivity_ViewBinding;Lcom/comeback/data/ui/km2/VideoPlayActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/km2/VideoPlayActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/km2/VideoPlayActivity;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/km2/VideoPlayActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/km2/VideoPlayActivity;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/km2/VideoPlayActivity;->b:Lcom/comeback/data/ui/km2/bean/Km2Video;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/comeback/data/ui/km2/bean/Km2Video;->getNickname()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/comeback/data/ui/km2/VideoPlayActivity;->b:Lcom/comeback/data/ui/km2/bean/Km2Video;

    invoke-virtual {v1}, Lcom/comeback/data/ui/km2/bean/Km2Video;->getUser_id()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/comeback/data/ui/km2/UserCenterActivity;->u(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
