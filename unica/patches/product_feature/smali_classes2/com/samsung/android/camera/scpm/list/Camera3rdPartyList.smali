.class public final Lcom/samsung/android/camera/scpm/list/Camera3rdPartyList;
.super Lcom/samsung/android/camera/scpm/ScpmList;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public constructor <init>()V
    .registers 72

    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/samsung/android/camera/scpm/ScpmList;-><init>()V

    sget-object v1, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;->CAMERA_3RD_PARTY:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    iput-object v1, v0, Lcom/samsung/android/camera/scpm/ScpmList;->mType:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    const-string v1, "2024051305"

    iput-object v1, v0, Lcom/samsung/android/camera/scpm/ScpmList;->mVersion:Ljava/lang/String;

    const-string/jumbo v1, "camera3rdpartylist-1857"

    iput-object v1, v0, Lcom/samsung/android/camera/scpm/ScpmList;->mConfigurationName:Ljava/lang/String;

    const-string/jumbo v1, "value"

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "packageName"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/camera/scpm/ScpmList;->mItemNames:[Ljava/lang/String;

    const-string/jumbo v1, "Y29tLmhhbmFiYW5rLmViay5jaGFubmVsLmFuZHJvaWQuaGFuYW5iYW5r"

    const-string v2, "1"

    const-string v3, "3rdAppPolicy:3.0c"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "Y29tLmludHNpZy5CQ1JMaXRl"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "Y29tLmludHNpZy5CaXpDYXJkUmVhZGVy"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "Y29tLmtha2FvYmFuay5jaGFubmVs"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v1, "Y29tLnNoaW5oYW4uc2Jhbmtpbmc="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "a3Iub3Iuc2JiYW5rLnBsdXM="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v1, "bmguc21hcnQuYmFua2luZw=="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v1, "Y29tLmppbnNpdC5zYWZlcGFzcw=="

    const-string v2, "16"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v1, "Y29tLnppbmcuemFsbw=="

    const-string v2, "256"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v1, "bmF0aXguYWkuZHJpdmUubWFwLm1vdmUuZWFybi53ZWIz"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v1, "bmV0Lmxvdm9vLmFuZHJvaWQ="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v1, "Y29tLmFsaWJhYmEuYW5kcm9pZC5yaW1ldA=="

    const-string v2, "260"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v1, "Y29tLmFuZHJvaWQuY2hyb21l"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v1, "Y29tLmNpc2NvLndlYmV4Lm1lZXRpbmdz"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v1, "Y29tLmNpc2NvLnd4Mi5hbmRyb2lk"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v1, "Y29tLmRpc2NvcmQ="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v1, "Y29tLmdvb2dsZS5hbmRyb2lkLmFwcHMubWVldGluZ3M="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v1, "Y29tLmdvb2dsZS5hbmRyb2lkLmFwcHMudGFjaHlvbg=="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v1, "Y29tLmdvb2dsZS5hbmRyb2lkLmdt"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v1, "Y29tLmdvb2dsZS5hbmRyb2lkLnRhbGs="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v1, "Y29tLmltby5hbmRyb2lkLmltb2lt"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v1, "Y29tLmt0Lm5hcmxl"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v1, "Y29tLm1pY3Jvc29mdC50ZWFtcw=="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v1, "Y29tLnNhbXN1bmcuYW5kcm9pZC5hcmRyYXdpbmc="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v1, "Y29tLnNkcy5tZWV0aW5n"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v1, "Y29tLnNkcy5zZHNtZWV0aW5n"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v1, "Y29tLnNlYy5zdmU="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v1, "Y29tLnNnaWdnbGUucHJvZHVjdGlvbg=="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v1, "Y29tLnNrdC5wcm9kLmRpYWxlcg=="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v1, "Y29tLnNreXBlLmluc2lkZXJz"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v1, "Y29tLnNreXBlLnJhaWRlcg=="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v1, "Y29tLnRlbmNlbnQubW0="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v1, "Y29tLnRlbmNlbnQubW9iaWxlcXE="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v1, "Y29tLnRlbmNlbnQudGlt"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v37

    const-string/jumbo v1, "Y29tLnZpYmVyLnZvaXA="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v38

    const-string/jumbo v1, "Y29tLndlc2Nhbi5hbG8="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v39

    const-string/jumbo v1, "aW0udGhlYm90Lm1lc3Nlbmdlcg=="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v40

    const-string/jumbo v1, "anAubmF2ZXIubGluZS5hbmRyb2lk"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v1, "b3JnLmppdHNpLm1lZXQ="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v42

    const-string/jumbo v1, "b3JnLnRlbGVncmFtLm1lc3Nlbmdlcg=="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v43

    const-string/jumbo v1, "b3JnLnRob3VnaHRjcmltZS5zZWN1cmVzbXM="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v44

    const-string/jumbo v1, "dXMuem9vbS52aWRlb21lZXRpbmdz"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v45

    const-string/jumbo v1, "Y29tLmtha2FvLnRhbGs="

    const-string v2, "262"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v46

    const-string/jumbo v1, "Y29tLm5pYW50aWNsYWJzLnBva2Vtb25nbw=="

    const-string v2, "264"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v47

    const-string/jumbo v1, "c2cuYmlnby5saXZl"

    const-string v2, "292"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v48

    const-string/jumbo v1, "Y29tLnNrdC50bWFwLmt1"

    const-string v2, "296"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v49

    const-string/jumbo v1, "Y29tLnByaXNtLmxpdmU="

    const-string v2, "352"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v50

    const-string/jumbo v1, "Y29tLnNvY2lhbC5tZWRpYS5icm9hZGNhc3QuYW9zcG9wLmU="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v51

    const-string/jumbo v1, "Y29tLnZhdWx0bWljcm8uY2FtZXJhZmkubGl2ZQ=="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v52

    const-string/jumbo v1, "a3IuY28ubm93Y29tLm1vYmlsZS5hZnJlZWNh"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v53

    const-string/jumbo v1, "Y29tLmNhbXBtb2JpbGUuc25vdw=="

    const-string v2, "512"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v54

    const-string/jumbo v1, "Y29tLmdvcmdlb3VzLmxpdGVpbnRlcm5hdGlvbmFs"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v55

    const-string/jumbo v1, "Y29tLmluc3RhZ3JhbS5hbmRyb2lk"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v56

    const-string/jumbo v1, "Y29tLmxpbmVjb3JwLmI2MTIuYW5kcm9pZA=="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v57

    const-string/jumbo v1, "Y29tLnNhbXN1bmcuYW5kcm9pZC5od3Jlc291cmNlc2hhcmU="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v58

    const-string/jumbo v1, "Y29tLnNpbmEud2VpYm8="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v59

    const-string/jumbo v1, "Y29tLnNub3djb3JwLnNvZGEuYW5kcm9pZA=="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v60

    const-string/jumbo v1, "Y29tLnNzLmFuZHJvaWQudWdj"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v61

    const-string/jumbo v1, "Y29tLnNzLmFuZHJvaWQudWdjLnRyaWxs"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v62

    const-string/jumbo v1, "Y29tLnR3aXR0ZXIuYW5kcm9pZA=="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v1, "Y29tLnlpcnVpa2Uuc29kYWNuLmFuZHJvaWQ="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v64

    const-string/jumbo v1, "Y29tLnpoaWxpYW9hcHAubXVzaWNhbGx5"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v65

    const-string/jumbo v1, "Y29tLnNuYXBjaGF0LmFuZHJvaWQ="

    const-string v2, "516"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v66

    const-string/jumbo v1, "Y29tLmZhY2Vib29rLmthdGFuYQ=="

    const-string v2, "772"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v67

    const-string/jumbo v1, "Y29tLmZhY2Vib29rLm9yY2E="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v68

    const-string/jumbo v1, "Y29tLndoYXRzYXBw"

    const-string v2, "2820"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v69

    const-string/jumbo v1, "Y29tLndoYXRzYXBwLnc0Yg=="

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v70

    filled-new-array/range {v4 .. v70}, [[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/scpm/ScpmList;->setPackageList([[Ljava/lang/String;)V

    return-void
.end method
