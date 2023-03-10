.class public Lf/e/a/j/d0/l/b;
.super Lm/j;
.source "VideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/maomi/bean/SpecialList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/maomi/fragment/VideoFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/maomi/fragment/VideoFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/d0/l/b;->e:Lcom/comeback/data/ui/maomi/fragment/VideoFragment;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/e/a/j/d0/l/b;->e:Lcom/comeback/data/ui/maomi/fragment/VideoFragment;

    invoke-static {p1}, Lcom/comeback/data/ui/maomi/fragment/VideoFragment;->q(Lcom/comeback/data/ui/maomi/fragment/VideoFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/maomi/bean/SpecialList;

    .line 2
    iget-object v0, p0, Lf/e/a/j/d0/l/b;->e:Lcom/comeback/data/ui/maomi/fragment/VideoFragment;

    iput-object p1, v0, Lcom/comeback/data/ui/maomi/fragment/VideoFragment;->j:Lcom/comeback/data/ui/maomi/bean/SpecialList;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Lcom/comeback/data/ui/maomi/fragment/VideoFragment;->l(I)V

    return-void
.end method
