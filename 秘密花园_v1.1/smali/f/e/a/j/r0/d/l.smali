.class public final synthetic Lf/e/a/j/r0/d/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/xj/adapter/VMovieItemAdapter;

.field public final synthetic b:Lcom/comeback/data/ui/xj/bean/VideoBean;


# direct methods
.method public synthetic constructor <init>(Lcom/comeback/data/ui/xj/adapter/VMovieItemAdapter;Lcom/comeback/data/ui/xj/bean/VideoBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/e/a/j/r0/d/l;->a:Lcom/comeback/data/ui/xj/adapter/VMovieItemAdapter;

    iput-object p2, p0, Lf/e/a/j/r0/d/l;->b:Lcom/comeback/data/ui/xj/bean/VideoBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lf/e/a/j/r0/d/l;->a:Lcom/comeback/data/ui/xj/adapter/VMovieItemAdapter;

    iget-object v1, p0, Lf/e/a/j/r0/d/l;->b:Lcom/comeback/data/ui/xj/bean/VideoBean;

    invoke-virtual {v0, v1, p1}, Lcom/comeback/data/ui/xj/adapter/VMovieItemAdapter;->d(Lcom/comeback/data/ui/xj/bean/VideoBean;Landroid/view/View;)V

    return-void
.end method
