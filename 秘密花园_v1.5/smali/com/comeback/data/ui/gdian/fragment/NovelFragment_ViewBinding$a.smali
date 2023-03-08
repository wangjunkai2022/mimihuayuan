.class public Lcom/comeback/data/ui/gdian/fragment/NovelFragment_ViewBinding$a;
.super Ld/c/b;
.source "NovelFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/gdian/fragment/NovelFragment_ViewBinding;-><init>(Lcom/comeback/data/ui/gdian/fragment/NovelFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/gdian/fragment/NovelFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gdian/fragment/NovelFragment_ViewBinding;Lcom/comeback/data/ui/gdian/fragment/NovelFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/gdian/fragment/NovelFragment_ViewBinding$a;->c:Lcom/comeback/data/ui/gdian/fragment/NovelFragment;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/gdian/fragment/NovelFragment_ViewBinding$a;->c:Lcom/comeback/data/ui/gdian/fragment/NovelFragment;

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/comeback/data/ui/gdian/SearchActivity;->m(Landroid/content/Context;)V

    return-void
.end method
