.class public Lf/e/a/k/g$b;
.super Ljava/lang/Object;
.source "RealmHelper.java"

# interfaces
.implements Lg/a/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/e/a/k/g;->c(Ljava/lang/Class;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/a/j0;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lf/e/a/k/g;Lg/a/j0;I)V
    .locals 0

    .line 1
    iput-object p2, p0, Lf/e/a/k/g$b;->a:Lg/a/j0;

    iput p3, p0, Lf/e/a/k/g$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lg/a/x;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/e/a/k/g$b;->a:Lg/a/j0;

    iget v0, p0, Lf/e/a/k/g$b;->b:I

    invoke-virtual {p1, v0}, Lg/a/u;->b(I)V

    return-void
.end method
