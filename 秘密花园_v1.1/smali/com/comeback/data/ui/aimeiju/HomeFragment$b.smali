.class public Lcom/comeback/data/ui/aimeiju/HomeFragment$b;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/aimeiju/HomeFragment;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/aimeiju/bean/ListBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/aimeiju/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/aimeiju/HomeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/HomeFragment$b;->f:Lcom/comeback/data/ui/aimeiju/HomeFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/aimeiju/bean/ListBean;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/HomeFragment$b;->f:Lcom/comeback/data/ui/aimeiju/HomeFragment;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/aimeiju/HomeFragment;->r(Lcom/comeback/data/ui/aimeiju/HomeFragment;Lcom/comeback/data/ui/aimeiju/bean/ListBean;)V

    return-void
.end method
