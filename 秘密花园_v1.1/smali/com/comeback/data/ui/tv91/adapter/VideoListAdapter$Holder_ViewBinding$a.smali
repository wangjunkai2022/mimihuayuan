.class public Lcom/comeback/data/ui/tv91/adapter/VideoListAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "VideoListAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/tv91/adapter/VideoListAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/tv91/adapter/VideoListAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/tv91/adapter/VideoListAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/tv91/adapter/VideoListAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/tv91/adapter/VideoListAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/tv91/adapter/VideoListAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/tv91/adapter/VideoListAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/tv91/adapter/VideoListAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/tv91/adapter/VideoListAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/tv91/adapter/VideoListAdapter$Holder;->a:Lcom/comeback/data/ui/tv91/adapter/VideoListAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/comeback/data/ui/tv91/adapter/VideoListAdapter$Holder;->b:Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;->getMovieID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/comeback/data/ui/tv91/adapter/VideoListAdapter$Holder;->b:Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/tv91/bean/VideoList$MessageBean$MoviesBean;->getSourceId()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/comeback/data/ui/tv91/PlayActivity;->o(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
