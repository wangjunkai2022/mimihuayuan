.class public abstract Lcom/comeback/data/ui/nana/viewpager/BaseCardPagerAdapter;
.super Lcom/comeback/data/ui/nana/viewpager/RecyclingPagerAdapter;
.source "BaseCardPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/comeback/data/ui/nana/viewpager/RecyclingPagerAdapter;"
    }
.end annotation


# instance fields
.field public b:Z

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/ui/nana/viewpager/RecyclingPagerAdapter;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/comeback/data/ui/nana/viewpager/BaseCardPagerAdapter;->b:Z

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/nana/viewpager/BaseCardPagerAdapter;->c:Ljava/util/ArrayList;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/nana/viewpager/BaseCardPagerAdapter;->d:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/viewpager/BaseCardPagerAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/nana/viewpager/BaseCardPagerAdapter;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/comeback/data/ui/nana/viewpager/BaseCardPagerAdapter;->b()I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/comeback/data/ui/nana/viewpager/BaseCardPagerAdapter;->b()I

    move-result v0

    :goto_0
    return v0
.end method
