.class public final synthetic Lf/e/a/j/j/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lf/c/a/h/d;


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/fengliu/Fengliu2Activity;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/comeback/data/ui/fengliu/Fengliu2Activity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/e/a/j/j/a;->a:Lcom/comeback/data/ui/fengliu/Fengliu2Activity;

    iput-object p2, p0, Lf/e/a/j/j/a;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(IIILandroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lf/e/a/j/j/a;->a:Lcom/comeback/data/ui/fengliu/Fengliu2Activity;

    iget-object v1, p0, Lf/e/a/j/j/a;->b:Ljava/util/ArrayList;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->u(Ljava/util/ArrayList;IIILandroid/view/View;)V

    return-void
.end method
