.class public Lcom/comeback/data/ui/ds/fragment/DiscoverFragment_ViewBinding$a;
.super Ld/c/b;
.source "DiscoverFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/ds/fragment/DiscoverFragment_ViewBinding;-><init>(Lcom/comeback/data/ui/ds/fragment/DiscoverFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/ds/fragment/DiscoverFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ds/fragment/DiscoverFragment_ViewBinding;Lcom/comeback/data/ui/ds/fragment/DiscoverFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/ds/fragment/DiscoverFragment_ViewBinding$a;->c:Lcom/comeback/data/ui/ds/fragment/DiscoverFragment;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/ds/fragment/DiscoverFragment_ViewBinding$a;->c:Lcom/comeback/data/ui/ds/fragment/DiscoverFragment;

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/comeback/data/ui/ds/SearchActivity;->w(Landroid/content/Context;)V

    return-void
.end method
