.class public Lf/e/a/j/a/e;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/comeback/data/base/BannerAdapter$a;


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/aimeiju/HomeFragment$a;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/aimeiju/HomeFragment$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/a/e;->a:Lcom/comeback/data/ui/aimeiju/HomeFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lf/e/a/j/a/e;->a:Lcom/comeback/data/ui/aimeiju/HomeFragment$a;

    iget-object p2, p2, Lcom/comeback/data/ui/aimeiju/HomeFragment$a;->f:Lcom/comeback/data/ui/aimeiju/HomeFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/comeback/data/ui/aimeiju/MovieDetailActivity;->n(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
