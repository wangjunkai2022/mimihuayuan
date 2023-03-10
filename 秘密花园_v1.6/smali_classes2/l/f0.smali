.class public final Ll/f0;
.super Ljava/lang/Object;
.source "RequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll/f0$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Method;

.field public final b:Li/x;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Li/w;

.field public final f:Li/z;

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:[Ll/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ll/c0<",
            "*>;"
        }
    .end annotation
.end field

.field public final k:Z


# direct methods
.method public constructor <init>(Ll/f0$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Ll/f0$a;->b:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ll/f0;->a:Ljava/lang/reflect/Method;

    .line 3
    iget-object v0, p1, Ll/f0$a;->a:Ll/h0;

    iget-object v0, v0, Ll/h0;->c:Li/x;

    iput-object v0, p0, Ll/f0;->b:Li/x;

    .line 4
    iget-object v0, p1, Ll/f0$a;->n:Ljava/lang/String;

    iput-object v0, p0, Ll/f0;->c:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Ll/f0$a;->r:Ljava/lang/String;

    iput-object v0, p0, Ll/f0;->d:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Ll/f0$a;->s:Li/w;

    iput-object v0, p0, Ll/f0;->e:Li/w;

    .line 7
    iget-object v0, p1, Ll/f0$a;->t:Li/z;

    iput-object v0, p0, Ll/f0;->f:Li/z;

    .line 8
    iget-boolean v0, p1, Ll/f0$a;->o:Z

    iput-boolean v0, p0, Ll/f0;->g:Z

    .line 9
    iget-boolean v0, p1, Ll/f0$a;->p:Z

    iput-boolean v0, p0, Ll/f0;->h:Z

    .line 10
    iget-boolean v0, p1, Ll/f0$a;->q:Z

    iput-boolean v0, p0, Ll/f0;->i:Z

    .line 11
    iget-object v0, p1, Ll/f0$a;->v:[Ll/c0;

    iput-object v0, p0, Ll/f0;->j:[Ll/c0;

    .line 12
    iget-boolean p1, p1, Ll/f0$a;->w:Z

    iput-boolean p1, p0, Ll/f0;->k:Z

    return-void
.end method
