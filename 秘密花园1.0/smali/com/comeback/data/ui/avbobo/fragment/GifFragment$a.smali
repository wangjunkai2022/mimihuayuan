.class public Lcom/comeback/data/ui/avbobo/fragment/GifFragment$a;
.super Ljava/lang/Object;
.source "GifFragment.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/avbobo/fragment/GifFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/avbobo/fragment/GifFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/avbobo/fragment/GifFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/fragment/GifFragment$a;->a:Lcom/comeback/data/ui/avbobo/fragment/GifFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/avbobo/fragment/GifFragment$a;->a:Lcom/comeback/data/ui/avbobo/fragment/GifFragment;

    invoke-static {p1}, Lcom/comeback/data/ui/avbobo/fragment/GifFragment;->m(Lcom/comeback/data/ui/avbobo/fragment/GifFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
