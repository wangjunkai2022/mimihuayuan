.class public final Lm/m/a$c;
.super Lm/m/a$b;
.source "CompositeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/m/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm/m/a$b;-><init>()V

    .line 2
    iput-object p1, p0, Lm/m/a$c;->a:Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/m/a$c;->a:Ljava/io/PrintStream;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
