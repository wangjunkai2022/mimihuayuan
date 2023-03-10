.class public Lf/e/a/j/w/g;
.super Lm/j;
.source "JHLFActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/jhlf/bean/WebSiteBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/jhlf/JHLFActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/jhlf/JHLFActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/w/g;->e:Lcom/comeback/data/ui/jhlf/JHLFActivity;

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

    const-string p1, "3+zUgeTl0Lb+gYnJnc7Sg4PH"

    .line 1
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/jhlf/bean/WebSiteBean;

    .line 2
    iget-object v0, p0, Lf/e/a/j/w/g;->e:Lcom/comeback/data/ui/jhlf/JHLFActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/jhlf/JHLFActivity;->loading:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v0}, Lcom/wang/avi/AVLoadingIndicatorView;->hide()V

    .line 3
    iget-object v0, p0, Lf/e/a/j/w/g;->e:Lcom/comeback/data/ui/jhlf/JHLFActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/jhlf/JHLFActivity;->flProgress:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lf/e/a/j/w/g;->e:Lcom/comeback/data/ui/jhlf/JHLFActivity;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/jhlf/JHLFActivity;->m(Lcom/comeback/data/ui/jhlf/JHLFActivity;Lcom/comeback/data/ui/jhlf/bean/WebSiteBean;)V

    return-void
.end method
