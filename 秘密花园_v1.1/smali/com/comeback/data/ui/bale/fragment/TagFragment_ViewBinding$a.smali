.class public Lcom/comeback/data/ui/bale/fragment/TagFragment_ViewBinding$a;
.super Ld/c/b;
.source "TagFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/bale/fragment/TagFragment_ViewBinding;-><init>(Lcom/comeback/data/ui/bale/fragment/TagFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/bale/fragment/TagFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/bale/fragment/TagFragment_ViewBinding;Lcom/comeback/data/ui/bale/fragment/TagFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/bale/fragment/TagFragment_ViewBinding$a;->c:Lcom/comeback/data/ui/bale/fragment/TagFragment;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/bale/fragment/TagFragment_ViewBinding$a;->c:Lcom/comeback/data/ui/bale/fragment/TagFragment;

    if-eqz p1, :cond_2

    .line 2
    sget-object v0, Lcom/comeback/data/ui/bale/adapter/TagAdapter;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "F4rM04LzsNX4z9LH/43O1Q=="

    .line 3
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    sget-object v3, Lcom/comeback/data/ui/bale/adapter/TagAdapter;->e:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 6
    sget-object v3, Lcom/comeback/data/ui/bale/adapter/TagAdapter;->e:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Gw=="

    .line 8
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/comeback/data/ui/bale/TagSearchActivity;->t(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 10
    throw p1
.end method
