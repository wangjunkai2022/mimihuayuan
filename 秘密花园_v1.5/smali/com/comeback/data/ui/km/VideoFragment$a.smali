.class public Lcom/comeback/data/ui/km/VideoFragment$a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "VideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/km/VideoFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/km/bean/KMVideoList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/km/VideoFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/km/VideoFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km/VideoFragment$a;->f:Lcom/comeback/data/ui/km/VideoFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/km/bean/KMVideoList;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/km/VideoFragment$a;->f:Lcom/comeback/data/ui/km/VideoFragment;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/km/VideoFragment;->m(Lcom/comeback/data/ui/km/VideoFragment;Lcom/comeback/data/ui/km/bean/KMVideoList;)V

    return-void
.end method
