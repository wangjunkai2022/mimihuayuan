.class public abstract Lcom/comeback/data/base/BaseRefreshActivity$a;
.super Lm/j;
.source "BaseRefreshActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/base/BaseRefreshActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lm/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/base/BaseRefreshActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/base/BaseRefreshActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/base/BaseRefreshActivity$a;->e:Lcom/comeback/data/base/BaseRefreshActivity;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity$a;->e:Lcom/comeback/data/base/BaseRefreshActivity;

    .line 2
    iget-object v0, v0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j(Z)Lf/j/a/a/f/i;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity$a;->e:Lcom/comeback/data/base/BaseRefreshActivity;

    .line 4
    iget-object v0, v0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m(Z)Lf/j/a/a/f/i;

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "aD08"

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->b()V

    .line 2
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshActivity$a;->e:Lcom/comeback/data/base/BaseRefreshActivity;

    .line 3
    iget-object p1, p1, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j(Z)Lf/j/a/a/f/i;

    .line 4
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshActivity$a;->e:Lcom/comeback/data/base/BaseRefreshActivity;

    .line 5
    iget-object p1, p1, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m(Z)Lf/j/a/a/f/i;

    return-void
.end method
