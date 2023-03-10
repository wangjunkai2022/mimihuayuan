.class public Lcom/comeback/data/ui/sex8/ui/YXDetailActivity$a;
.super Lcom/comeback/data/base/BaseRefreshActivity$a;
.source "YXDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;->p(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshActivity$a<",
        "Lcom/comeback/data/ui/sex8/bean/YXNovelDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity$a;->f:Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshActivity$a;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/sex8/bean/YXNovelDetail;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity$a;->f:Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;->r(Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;Lcom/comeback/data/ui/sex8/bean/YXNovelDetail;)V

    .line 3
    iget-object p1, p0, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity$a;->f:Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;

    .line 4
    iget-object p1, p1, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t(Z)Lf/j/a/a/f/i;

    .line 6
    iget-object p1, p0, Lcom/comeback/data/ui/sex8/ui/YXDetailActivity$a;->f:Lcom/comeback/data/ui/sex8/ui/YXDetailActivity;

    .line 7
    iget-object p1, p1, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 8
    iput-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    return-void
.end method
