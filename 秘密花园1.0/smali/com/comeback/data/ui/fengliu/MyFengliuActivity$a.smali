.class public Lcom/comeback/data/ui/fengliu/MyFengliuActivity$a;
.super Lcom/comeback/data/base/BaseRefreshActivity$a;
.source "MyFengliuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/fengliu/MyFengliuActivity;->p(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshActivity$a<",
        "Ljava/util/ArrayList<",
        "Lcom/comeback/data/ui/fengliu/bean/MMInfo2;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/comeback/data/ui/fengliu/MyFengliuActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fengliu/MyFengliuActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fengliu/MyFengliuActivity$a;->g:Lcom/comeback/data/ui/fengliu/MyFengliuActivity;

    iput p2, p0, Lcom/comeback/data/ui/fengliu/MyFengliuActivity$a;->f:I

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshActivity$a;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;)V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/comeback/data/base/BaseRefreshActivity$a;->e(Ljava/lang/Throwable;)V

    const-string p1, "0ffTgubd0b3Eg7vxnc7Sg4PHjNjnm5aElcW0gefPhNamhdj4jfuv1sP73Mjtj+vs0e/BjOHx3rHK"

    .line 2
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    iget v0, p0, Lcom/comeback/data/ui/fengliu/MyFengliuActivity$a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/MyFengliuActivity$a;->g:Lcom/comeback/data/ui/fengliu/MyFengliuActivity;

    invoke-static {v0}, Lcom/comeback/data/ui/fengliu/MyFengliuActivity;->r(Lcom/comeback/data/ui/fengliu/MyFengliuActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/MyFengliuActivity$a;->g:Lcom/comeback/data/ui/fengliu/MyFengliuActivity;

    invoke-static {v0}, Lcom/comeback/data/ui/fengliu/MyFengliuActivity;->s(Lcom/comeback/data/ui/fengliu/MyFengliuActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
