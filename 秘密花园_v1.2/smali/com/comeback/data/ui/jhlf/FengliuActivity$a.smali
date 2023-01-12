.class public Lcom/comeback/data/ui/jhlf/FengliuActivity$a;
.super Lcom/comeback/data/base/BaseRefreshActivity$a;
.source "FengliuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/jhlf/FengliuActivity;->p(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshActivity$a<",
        "Lcom/comeback/data/ui/jhlf/bean/MMList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/comeback/data/ui/jhlf/FengliuActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/jhlf/FengliuActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity$a;->g:Lcom/comeback/data/ui/jhlf/FengliuActivity;

    iput p2, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity$a;->f:I

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
    check-cast p1, Lcom/comeback/data/ui/jhlf/bean/MMList;

    .line 2
    iget v0, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity$a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity$a;->g:Lcom/comeback/data/ui/jhlf/FengliuActivity;

    invoke-static {v0}, Lcom/comeback/data/ui/jhlf/FengliuActivity;->r(Lcom/comeback/data/ui/jhlf/FengliuActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity$a;->g:Lcom/comeback/data/ui/jhlf/FengliuActivity;

    invoke-static {v0}, Lcom/comeback/data/ui/jhlf/FengliuActivity;->s(Lcom/comeback/data/ui/jhlf/FengliuActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/jhlf/bean/MMList;->getData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
