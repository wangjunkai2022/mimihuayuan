.class public Lcom/comeback/data/ui/xiami/ImageReadActivity$a;
.super Lm/j;
.source "ImageReadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/xiami/ImageReadActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/xiami/bean/ImageDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/xiami/ImageReadActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/xiami/ImageReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/ImageReadActivity$a;->e:Lcom/comeback/data/ui/xiami/ImageReadActivity;

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

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/xiami/bean/ImageDetail;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/ImageReadActivity$a;->e:Lcom/comeback/data/ui/xiami/ImageReadActivity;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/xiami/ImageReadActivity;->l(Lcom/comeback/data/ui/xiami/ImageReadActivity;Lcom/comeback/data/ui/xiami/bean/ImageDetail;)V

    return-void
.end method
