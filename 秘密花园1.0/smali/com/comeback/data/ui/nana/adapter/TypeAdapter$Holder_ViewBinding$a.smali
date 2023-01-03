.class public Lcom/comeback/data/ui/nana/adapter/TypeAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "TypeAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/nana/adapter/TypeAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/nana/adapter/TypeAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/nana/adapter/TypeAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/nana/adapter/TypeAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/nana/adapter/TypeAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/nana/adapter/TypeAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/nana/adapter/TypeAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/nana/adapter/TypeAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/nana/adapter/TypeAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/nana/adapter/TypeAdapter$Holder;->a:Lcom/comeback/data/ui/nana/adapter/TypeAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/comeback/data/ui/nana/adapter/TypeAdapter$Holder;->b:Lcom/comeback/data/ui/nana/bean/TypeBean$ResponseEntity$CategoriesEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/nana/bean/TypeBean$ResponseEntity$CategoriesEntity;->getCategory_id()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/comeback/data/ui/nana/adapter/TypeAdapter$Holder;->a:Lcom/comeback/data/ui/nana/adapter/TypeAdapter;

    .line 3
    iget-object p1, p1, Lcom/comeback/data/ui/nana/adapter/TypeAdapter;->d:Ljava/lang/String;

    .line 4
    invoke-static {v0, v1, p1}, Lcom/comeback/data/ui/nana/TypeDetailActivity;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
