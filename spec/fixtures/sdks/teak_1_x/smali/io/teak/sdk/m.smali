.class public final Lio/teak/sdk/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/m$a;
    }
.end annotation


# static fields
.field private static e:Lio/teak/sdk/m;

.field private static final f:Ljava/lang/Object;

.field private static g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/teak/sdk/m$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lio/teak/sdk/a/b;

.field public final b:Lio/teak/sdk/a/a;

.field public final c:Lio/teak/sdk/a/c;

.field public d:Lio/teak/sdk/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lio/teak/sdk/m$1;

    invoke-direct {v0}, Lio/teak/sdk/m$1;-><init>()V

    invoke-static {v0}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n$a;)V

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/teak/sdk/m;->f:Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/teak/sdk/m;->g:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lio/teak/sdk/c;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/teak/sdk/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/d$a;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lio/teak/sdk/a/b;

    invoke-direct {v0, p1}, Lio/teak/sdk/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/teak/sdk/m;->a:Lio/teak/sdk/a/b;

    .line 56
    new-instance v0, Lio/teak/sdk/a/a;

    invoke-interface {p2}, Lio/teak/sdk/c;->b()Lio/teak/sdk/d/f;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lio/teak/sdk/a/a;-><init>(Landroid/content/Context;Lio/teak/sdk/d/f;)V

    iput-object v0, p0, Lio/teak/sdk/m;->b:Lio/teak/sdk/a/a;

    .line 57
    new-instance v0, Lio/teak/sdk/a/c;

    invoke-direct {v0, p1, p2}, Lio/teak/sdk/a/c;-><init>(Landroid/content/Context;Lio/teak/sdk/c;)V

    iput-object v0, p0, Lio/teak/sdk/m;->c:Lio/teak/sdk/a/c;

    .line 58
    return-void
.end method

.method public static a()Lio/teak/sdk/m;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lio/teak/sdk/m;->e:Lio/teak/sdk/m;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call to TeakConfiguration.get() before initialization."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    sget-object v0, Lio/teak/sdk/m;->e:Lio/teak/sdk/m;

    return-object v0
.end method

.method public static a(Lio/teak/sdk/m$a;)V
    .locals 2

    .prologue
    .line 91
    sget-object v1, Lio/teak/sdk/m;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_0
    sget-object v0, Lio/teak/sdk/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    sget-object v0, Lio/teak/sdk/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    sget-object v0, Lio/teak/sdk/m;->e:Lio/teak/sdk/m;

    if-eqz v0, :cond_1

    .line 98
    sget-object v0, Lio/teak/sdk/m;->e:Lio/teak/sdk/m;

    invoke-interface {p0, v0}, Lio/teak/sdk/m$a;->a(Lio/teak/sdk/m;)V

    .line 100
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Lio/teak/sdk/c;)Z
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/teak/sdk/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    :try_start_0
    new-instance v1, Lio/teak/sdk/m;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lio/teak/sdk/m;-><init>(Landroid/content/Context;Lio/teak/sdk/c;)V

    .line 34
    iget-object v0, v1, Lio/teak/sdk/m;->c:Lio/teak/sdk/a/c;

    iget-object v0, v0, Lio/teak/sdk/a/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 35
    sput-object v1, Lio/teak/sdk/m;->e:Lio/teak/sdk/m;

    .line 36
    sget-object v2, Lio/teak/sdk/m;->f:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Lio/teak/sdk/d$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :try_start_1
    sget-object v0, Lio/teak/sdk/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/m$a;

    .line 38
    invoke-interface {v0, v1}, Lio/teak/sdk/m$a;->a(Lio/teak/sdk/m;)V

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lio/teak/sdk/d$a; {:try_start_2 .. :try_end_2} :catch_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string v1, "Teak.Integration"

    invoke-virtual {v0}, Lio/teak/sdk/d$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    :goto_1
    sget-object v0, Lio/teak/sdk/m;->e:Lio/teak/sdk/m;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    return v0

    .line 40
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 46
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic b()Lio/teak/sdk/m;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lio/teak/sdk/m;->e:Lio/teak/sdk/m;

    return-object v0
.end method
