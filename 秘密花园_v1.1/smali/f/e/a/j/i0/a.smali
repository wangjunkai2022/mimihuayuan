.class public Lf/e/a/j/i0/a;
.super Ljava/lang/Object;
.source "SenLinActivity.java"

# interfaces
.implements Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter$a;


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/senlin/SenLinActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/senlin/SenLinActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/i0/a;->a:Lcom/comeback/data/ui/senlin/SenLinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/e/a/j/i0/a;->a:Lcom/comeback/data/ui/senlin/SenLinActivity;

    .line 2
    iput-object p1, v0, Lcom/comeback/data/ui/senlin/SenLinActivity;->g:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lcom/comeback/data/base/BaseVRefreshActivity;->r()V

    .line 4
    iget-object p1, p0, Lf/e/a/j/i0/a;->a:Lcom/comeback/data/ui/senlin/SenLinActivity;

    .line 5
    iget-object p1, p1, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 6
    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    return-void
.end method
