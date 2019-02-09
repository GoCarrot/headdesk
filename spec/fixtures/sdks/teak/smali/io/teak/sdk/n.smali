.class public final Lio/teak/sdk/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/n$a;
    }
.end annotation


# static fields
.field private static f:Lio/teak/sdk/n;

.field private static final g:Ljava/lang/Object;

.field private static h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/teak/sdk/n$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lio/teak/sdk/a/c;

.field public final b:Lio/teak/sdk/a/a;

.field public final c:Lio/teak/sdk/a/d;

.field public d:Lio/teak/sdk/a/e;

.field public e:Lio/teak/sdk/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lio/teak/sdk/n$1;

    invoke-direct {v0}, Lio/teak/sdk/n$1;-><init>()V

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o$a;)V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/teak/sdk/n;->g:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/teak/sdk/n;->h:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lio/teak/sdk/d;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/teak/sdk/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e$a;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lio/teak/sdk/a/c;

    invoke-direct {v0, p1}, Lio/teak/sdk/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/teak/sdk/n;->a:Lio/teak/sdk/a/c;

    .line 43
    new-instance v0, Lio/teak/sdk/a/a;

    invoke-interface {p2}, Lio/teak/sdk/d;->b()Lio/teak/sdk/d/f;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lio/teak/sdk/a/a;-><init>(Landroid/content/Context;Lio/teak/sdk/d/f;)V

    iput-object v0, p0, Lio/teak/sdk/n;->b:Lio/teak/sdk/a/a;

    .line 44
    new-instance v0, Lio/teak/sdk/a/d;

    invoke-direct {v0, p1, p2}, Lio/teak/sdk/a/d;-><init>(Landroid/content/Context;Lio/teak/sdk/d;)V

    iput-object v0, p0, Lio/teak/sdk/n;->c:Lio/teak/sdk/a/d;

    .line 45
    new-instance v0, Lio/teak/sdk/a/b;

    invoke-interface {p2}, Lio/teak/sdk/d;->b()Lio/teak/sdk/d/f;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lio/teak/sdk/a/b;-><init>(Landroid/content/Context;Lio/teak/sdk/d/f;)V

    iput-object v0, p0, Lio/teak/sdk/n;->e:Lio/teak/sdk/a/b;

    .line 46
    return-void
.end method

.method public static a()Lio/teak/sdk/n;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lio/teak/sdk/n;->f:Lio/teak/sdk/n;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call to TeakConfiguration.get() before initialization."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    sget-object v0, Lio/teak/sdk/n;->f:Lio/teak/sdk/n;

    return-object v0
.end method

.method public static a(Lio/teak/sdk/n$a;)V
    .locals 2

    .prologue
    .line 79
    sget-object v1, Lio/teak/sdk/n;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v0, Lio/teak/sdk/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    sget-object v0, Lio/teak/sdk/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    sget-object v0, Lio/teak/sdk/n;->f:Lio/teak/sdk/n;

    if-eqz v0, :cond_1

    .line 86
    sget-object v0, Lio/teak/sdk/n;->f:Lio/teak/sdk/n;

    invoke-interface {p0, v0}, Lio/teak/sdk/n$a;->a(Lio/teak/sdk/n;)V

    .line 88
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

.method public static a(Landroid/content/Context;Lio/teak/sdk/d;)Z
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/teak/sdk/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 18
    :try_start_0
    new-instance v1, Lio/teak/sdk/n;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lio/teak/sdk/n;-><init>(Landroid/content/Context;Lio/teak/sdk/d;)V

    .line 20
    iget-object v0, v1, Lio/teak/sdk/n;->c:Lio/teak/sdk/a/d;

    iget-object v0, v0, Lio/teak/sdk/a/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 21
    sput-object v1, Lio/teak/sdk/n;->f:Lio/teak/sdk/n;

    .line 22
    sget-object v2, Lio/teak/sdk/n;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Lio/teak/sdk/e$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :try_start_1
    sget-object v0, Lio/teak/sdk/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/n$a;

    .line 24
    invoke-interface {v0, v1}, Lio/teak/sdk/n$a;->a(Lio/teak/sdk/n;)V

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lio/teak/sdk/e$a; {:try_start_2 .. :try_end_2} :catch_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const-string v1, "Teak.Integration"

    invoke-virtual {v0}, Lio/teak/sdk/e$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    :goto_1
    sget-object v0, Lio/teak/sdk/n;->f:Lio/teak/sdk/n;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    return v0

    .line 26
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 32
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic b()Lio/teak/sdk/n;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lio/teak/sdk/n;->f:Lio/teak/sdk/n;

    return-object v0
.end method
