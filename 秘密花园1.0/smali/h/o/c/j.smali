.class public Lh/o/c/j;
.super Lh/o/c/i;
.source "PropertyReference1Impl.java"


# instance fields
.field public final d:Lh/q/c;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lh/q/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lh/o/c/i;-><init>()V

    .line 2
    iput-object p1, p0, Lh/o/c/j;->d:Lh/q/c;

    .line 3
    iput-object p2, p0, Lh/o/c/j;->e:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lh/o/c/j;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lh/o/c/i;->c()Lh/q/d$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lh/q/a;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
