.class public Lcom/comeback/data/ui/maomi/SpecialDetailActivity$a;
.super Lcom/comeback/data/base/BaseRefreshActivity$a;
.source "SpecialDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/maomi/SpecialDetailActivity;->p(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshActivity$a<",
        "Lcom/comeback/data/ui/maomi/bean/SearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/comeback/data/ui/maomi/SpecialDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/maomi/SpecialDetailActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/SpecialDetailActivity$a;->g:Lcom/comeback/data/ui/maomi/SpecialDetailActivity;

    iput p2, p0, Lcom/comeback/data/ui/maomi/SpecialDetailActivity$a;->f:I

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshActivity$a;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/maomi/bean/SearchResult;

    .line 2
    iget v0, p0, Lcom/comeback/data/ui/maomi/SpecialDetailActivity$a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/SpecialDetailActivity$a;->g:Lcom/comeback/data/ui/maomi/SpecialDetailActivity;

    invoke-static {v0}, Lcom/comeback/data/ui/maomi/SpecialDetailActivity;->u(Lcom/comeback/data/ui/maomi/SpecialDetailActivity;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/SpecialDetailActivity$a;->g:Lcom/comeback/data/ui/maomi/SpecialDetailActivity;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/maomi/SpecialDetailActivity;->v(Lcom/comeback/data/ui/maomi/SpecialDetailActivity;Lcom/comeback/data/ui/maomi/bean/SearchResult;)V

    return-void
.end method
