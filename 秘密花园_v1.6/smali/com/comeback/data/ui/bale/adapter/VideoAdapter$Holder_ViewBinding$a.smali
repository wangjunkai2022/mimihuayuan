.class public Lcom/comeback/data/ui/bale/adapter/VideoAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "VideoAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/bale/adapter/VideoAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/bale/adapter/VideoAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/bale/adapter/VideoAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/bale/adapter/VideoAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/bale/adapter/VideoAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/bale/adapter/VideoAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/bale/adapter/VideoAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/bale/adapter/VideoAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/bale/adapter/VideoAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/bale/adapter/VideoAdapter$Holder;->a:Lcom/comeback/data/ui/bale/adapter/VideoAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/comeback/data/ui/bale/adapter/VideoAdapter$Holder;->b:Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;

    invoke-virtual {p1}, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/comeback/data/ui/bale/PlayActivity;->o(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
