.class final Lio/teak/sdk/k$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/d;Lio/teak/sdk/k$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/util/Map;

.field private synthetic d:Lio/teak/sdk/b/d;

.field private synthetic e:Lio/teak/sdk/k$e;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/d;Lio/teak/sdk/k$e;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lio/teak/sdk/k$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/teak/sdk/k$3;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/teak/sdk/k$3;->c:Ljava/util/Map;

    iput-object p4, p0, Lio/teak/sdk/k$3;->d:Lio/teak/sdk/b/d;

    iput-object p5, p0, Lio/teak/sdk/k$3;->e:Lio/teak/sdk/k$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 307
    iget-object v0, p0, Lio/teak/sdk/k$3;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/teak/sdk/k$3;->b:Ljava/lang/String;

    iget-object v2, p0, Lio/teak/sdk/k$3;->c:Ljava/util/Map;

    iget-object v3, p0, Lio/teak/sdk/k$3;->d:Lio/teak/sdk/b/d;

    iget-object v4, p0, Lio/teak/sdk/k$3;->e:Lio/teak/sdk/k$e;

    invoke-static {v0, v1, v2, v3, v4}, Lio/teak/sdk/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/d;Lio/teak/sdk/k$e;)V

    .line 308
    return-void
.end method
