.class public final synthetic Lf/e/a/j/h0/k/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/nana/adapter/VVideoAdapter;

.field public final synthetic b:Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/comeback/data/ui/nana/adapter/VVideoAdapter;Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/e/a/j/h0/k/a;->a:Lcom/comeback/data/ui/nana/adapter/VVideoAdapter;

    iput-object p2, p0, Lf/e/a/j/h0/k/a;->b:Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lf/e/a/j/h0/k/a;->a:Lcom/comeback/data/ui/nana/adapter/VVideoAdapter;

    iget-object v1, p0, Lf/e/a/j/h0/k/a;->b:Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;

    invoke-virtual {v0, v1, p1}, Lcom/comeback/data/ui/nana/adapter/VVideoAdapter;->d(Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;Landroid/view/View;)V

    return-void
.end method
