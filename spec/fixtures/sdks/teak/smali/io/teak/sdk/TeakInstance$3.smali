.class final Lio/teak/sdk/TeakInstance$3;
.super Lio/teak/sdk/b/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/TeakInstance;->setNumericAttribute(Ljava/lang/String;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:D


# direct methods
.method constructor <init>(Lio/teak/sdk/TeakInstance;Ljava/lang/String;D)V
    .locals 1

    .prologue
    .line 177
    iput-object p2, p0, Lio/teak/sdk/TeakInstance$3;->a:Ljava/lang/String;

    iput-wide p3, p0, Lio/teak/sdk/TeakInstance$3;->b:D

    invoke-direct {p0}, Lio/teak/sdk/b/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/b/e;)V
    .locals 4

    .prologue
    .line 180
    iget-object v0, p1, Lio/teak/sdk/b/e;->b:Lio/teak/sdk/b/g;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p1, Lio/teak/sdk/b/e;->b:Lio/teak/sdk/b/g;

    iget-object v1, p0, Lio/teak/sdk/TeakInstance$3;->a:Ljava/lang/String;

    iget-wide v2, p0, Lio/teak/sdk/TeakInstance$3;->b:D

    invoke-virtual {v0, v1, v2, v3}, Lio/teak/sdk/b/g;->a(Ljava/lang/String;D)V

    .line 183
    :cond_0
    return-void
.end method
