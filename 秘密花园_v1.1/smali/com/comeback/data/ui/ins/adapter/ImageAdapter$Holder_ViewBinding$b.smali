.class public Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder_ViewBinding$b;
.super Ld/c/b;
.source "ImageAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder_ViewBinding$b;->c:Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder_ViewBinding$b;->c:Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;

    invoke-virtual {v0, p1}, Lcom/comeback/data/ui/ins/adapter/ImageAdapter$Holder;->onClick(Landroid/view/View;)V

    return-void
.end method
