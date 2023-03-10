.class public Lcom/comeback/data/ui/mimei/adapter/NovelAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "NovelAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/mimei/adapter/NovelAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/mimei/adapter/NovelAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/mimei/adapter/NovelAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/mimei/adapter/NovelAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/mimei/adapter/NovelAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/mimei/adapter/NovelAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/mimei/adapter/NovelAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/mimei/adapter/NovelAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/mimei/adapter/NovelAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/mimei/adapter/NovelAdapter$Holder;->a:Lcom/comeback/data/ui/mimei/adapter/NovelAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/comeback/data/ui/mimei/adapter/NovelAdapter$Holder;->b:Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;

    invoke-virtual {v1}, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/comeback/data/ui/mimei/adapter/NovelAdapter$Holder;->b:Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->getFilepath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/comeback/data/ui/mimei/NovelReadActivity;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
