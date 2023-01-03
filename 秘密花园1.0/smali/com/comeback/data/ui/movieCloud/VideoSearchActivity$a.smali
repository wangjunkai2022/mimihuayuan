.class public Lcom/comeback/data/ui/movieCloud/VideoSearchActivity$a;
.super Lcom/comeback/data/base/BaseRefreshActivity$a;
.source "VideoSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;->p(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshActivity$a<",
        "Lcom/comeback/data/ui/movieCloud/bean/XXList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity$a;->g:Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;

    iput p2, p0, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity$a;->f:I

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshActivity$a;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/movieCloud/bean/XXList;

    .line 2
    iget v0, p0, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity$a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity$a;->g:Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;

    .line 3
    iget-boolean v2, v0, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;->g:Z

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/comeback/data/base/BaseVRefreshActivity;->r()V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity$a;->g:Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;

    .line 6
    iput-boolean v1, v0, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;->g:Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity$a;->g:Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;->g:Z

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity$a;->g:Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;->u(Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;Lcom/comeback/data/ui/movieCloud/bean/XXList;)V

    return-void
.end method
