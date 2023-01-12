.class public Lf/i/b/c0/g$a;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lf/i/b/c0/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/i/b/c0/g;->a(Lf/i/b/d0/a;)Lf/i/b/c0/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/i/b/c0/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lf/i/b/k;

.field public final synthetic b:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lf/i/b/c0/g;Lf/i/b/k;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lf/i/b/c0/g$a;->a:Lf/i/b/k;

    iput-object p3, p0, Lf/i/b/c0/g$a;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/b/c0/g$a;->a:Lf/i/b/k;

    iget-object v1, p0, Lf/i/b/c0/g$a;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lf/i/b/k;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
