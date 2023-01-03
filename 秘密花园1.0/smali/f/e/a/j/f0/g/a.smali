.class public final synthetic Lf/e/a/j/f0/g/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/movieCloud/adapter/AMJItemAdapter;

.field public final synthetic b:Lcom/comeback/data/ui/movieCloud/bean/AMJList$DataBean;


# direct methods
.method public synthetic constructor <init>(Lcom/comeback/data/ui/movieCloud/adapter/AMJItemAdapter;Lcom/comeback/data/ui/movieCloud/bean/AMJList$DataBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/e/a/j/f0/g/a;->a:Lcom/comeback/data/ui/movieCloud/adapter/AMJItemAdapter;

    iput-object p2, p0, Lf/e/a/j/f0/g/a;->b:Lcom/comeback/data/ui/movieCloud/bean/AMJList$DataBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lf/e/a/j/f0/g/a;->a:Lcom/comeback/data/ui/movieCloud/adapter/AMJItemAdapter;

    iget-object v1, p0, Lf/e/a/j/f0/g/a;->b:Lcom/comeback/data/ui/movieCloud/bean/AMJList$DataBean;

    invoke-virtual {v0, v1, p1}, Lcom/comeback/data/ui/movieCloud/adapter/AMJItemAdapter;->d(Lcom/comeback/data/ui/movieCloud/bean/AMJList$DataBean;Landroid/view/View;)V

    return-void
.end method
