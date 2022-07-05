<script>
  $(document).ready(function () {
    CKEDITOR.replace('Description');
    CKEDITOR.replace('content');
    $(".editForm").hide();
    $(".EditPriceArea").hide();
    selectors();
    addDungLuong();
    delDungLuong();
    editDungLuong();
    addColor();
    editColor();
    delColor();
    addKhoHang();
    deleteKho();
    editStorage();
    addKey();
    deleteKey();
    editKey();
    addBrand();
    deleteBrand();
    editBrand();
    addThietBi();
    deleteThietBi();
    editThietBi();
    deleteCTSP();
    updateTonKho();
    deleteProd();
    closeAlert();
    deleteSingleProductImage();
    addImg1();
    addImg2();
    editPrice();
    showHideProd();
    addMien();
    addTinh();
    deleteMien();
    editMien();
    deleteTinh();
    editTinh();
    UDPVC();
    addPVCOther();
    addRole();
    editRole();
    deleteRole();
    createUser();
    UDUser();
    ChangeUserRole();
    getBills();
    DIEUHANG();
    sendHang();
    nhanHang();
    deletePhieuDieu();
    sendHD();
    LayHang();
    GiaoHang();
    EditHint();
    addHint();
    deleteContactSP();
    UDContactSP();
  });

  function UDContactSP() {
    $(".editSPContactBtn").click(function (e) {
      e.preventDefault();
      var idPhieu = $(this).attr("data-id");
      console.log(idPhieu);
      $("#submitContactSPBtn").click(function (e) {
        e.preventDefault();
        var note = $("#note").val();
        swal({
            title: "Bạn đã hỗ trợ khách hàng ?",
            icon: "warning",
            buttons: true,
            dangerMode: true,
          })
          .then((willDelete) => {
            if (willDelete) {
              $.ajax({
                url: 'index.php?page=support&&act=UDCT',
                type: "POST",
                data: {
                  note: note,
                  idPhieu: idPhieu,
                },
                success: function (data) {
                  swal({
                    title: 'Thành công',
                    text: 'Đã xác nhận phiếu',
                    icon: 'success',
                    button: "OK",
                  }).then(() => {
                    window.location.reload();
                  });
                },
                error: function (xhr, status, error) {
                  console.log("Fail");
                }
              });
            } else {
              swal("Ok! Không đổi", {
                icon: 'error',
              });
            }
          });
      });
    });
  }

  function deleteContactSP() {
    $(".deleteSPContactBtn").click(function (e) {
      e.preventDefault();
      var idPhieu = $(this).attr("data-id");
      swal({
            title: "Bạn muốn xóa phiếu ?",
            icon: "warning",
            buttons: true,
            dangerMode: true,
          })
          .then((willDelete) => {
            if (willDelete) {
              $.ajax({
                url: 'index.php?page=support&&act=delete',
                type: "POST",
                data: {
                  idPhieu: idPhieu,
                },
                success: function (data) {
                  swal({
                    title: 'Thành công',
                    text: 'Đã xác nhận phiếu',
                    icon: 'success',
                    button: "OK",
                  }).then(() => {
                    window.location.reload();
                  });
                },
                error: function (xhr, status, error) {
                  console.log("Fail");
                }
              });
            } else {
              swal("Ok! Không đổi", {
                icon: 'error',
              });
            }
          });
    });
  }

  function addHint() {
    $("#addNewHintBtn").click(function (e) {
      e.preventDefault();
      var newHint = $("#HintQuestion").val();
      var HintAnswer = $("#HintAnswer").val();
      $.ajax({
        url: 'index.php?page=nightbot&&act=addNewHint',
        type: "POST",
        data: {
          newHint: newHint,
          HintAnswer: HintAnswer,
        },
        success: function (data) {
          swal({
            title: 'Thành công',
            text: 'Đã đổi hint',
            icon: 'success',
            button: "OK",
          }).then(() => {
            window.location.reload();
          });
        },
        error: function (xhr, status, error) {
          console.log("Fail");
        }
      });

    });
  }

  function EditHint() {
    $(".editHintBtn").click(function (e) {
      e.preventDefault();
      var idHint = $(this).attr("data-id");
      console.log(idHint);
      $("#submitNewHint").click(function (e) {
        e.preventDefault();
        var newHint = $("#newHint").val();
        var newanswer = $("#newanswer").val();
        swal({
            title: "Bạn muốn đổi Hint phải ko ?",
            icon: "warning",
            buttons: true,
            dangerMode: true,
          })
          .then((willDelete) => {
            if (willDelete) {
              $.ajax({
                url: 'index.php?page=nightbot&&act=editHint',
                type: "POST",
                data: {
                  idHint: idHint,
                  newHint: newHint,
                  newanswer: newanswer,
                },
                success: function (data) {
                  swal({
                    title: 'Thành công',
                    text: 'Đã đổi hint',
                    icon: 'success',
                    button: "OK",
                  }).then(() => {
                    window.location.reload();
                  });
                },
                error: function (xhr, status, error) {
                  console.log("Fail");
                }
              });
            } else {
              swal("Ok! Không đổi", {
                icon: 'error',
              });
            }
          });
      });
      $("#deleteHint").click(function (e) {
        e.preventDefault();
        swal({
            title: "Bạn muốn xóa mẫu hội thoại phải ko ?",
            icon: "warning",
            buttons: true,
            dangerMode: true,
          })
          .then((willDelete) => {
            if (willDelete) {
              $.ajax({
                url: 'index.php?page=nightbot&&act=deleteHint',
                type: "POST",
                data: {
                  idHint: idHint,
                },
                success: function (data) {
                  swal({
                    title: 'Thành công',
                    text: 'Đã xóa hint',
                    icon: 'success',
                    button: "OK",
                  }).then(() => {
                    window.location.reload();
                  });
                },
                error: function (xhr, status, error) {
                  console.log("Fail");
                }
              });
            } else {
              swal("Ok! Không xóa", {
                icon: 'error',
              });
            }
          });
      });
    });
  }
  
  function GiaoHang() {
    $(".shippingBtn").click(function (e) {
      e.preventDefault();
      var maVanDon = $(this).attr("data-id");
      $("#SubmitShipRs").click(function (e) {
        e.preventDefault();
        var kq = $("#shipResult option:selected").val();
        var note = $("#note").val();
        $.ajax({
          url: 'index.php?page=shipHang&&act=shipHang',
          type: "POST",
          data: {
            maVanDon: maVanDon,
            kq: kq,
            note: note

          },
          success: function (data) {
            swal({
              title: 'Thành công',
              text: 'Đã gửi yêu cầu !',
              icon: 'success',
              button: "OK",
            }).then(() => {
              window.location.reload();
            });
          },
          error: function (xhr, status, error) {
            console.log("Fail");
          }
        });
      });
    });
  }

  function LayHang() {
    $(".pickupBtn").click(function (e) {
      e.preventDefault();
      var maVanDon = $(this).attr("data-id");
      $.ajax({
        url: 'index.php?page=shipHang&&act=LayHang',
        type: "POST",
        data: {
          maVanDon: maVanDon,
        },
        success: function (data) {
          swal({
            title: 'Thành công',
            text: 'Đã gửi yêu cầu !',
            icon: 'success',
            button: "OK",
          }).then(() => {
            window.location.reload();
          });
        },
        error: function (xhr, status, error) {
          console.log("Fail");
        }
      });
    });
  }

  function sendHD() {
    $("#sendBill").click(function (e) {
      e.preventDefault();
      var idHD = $(this).attr("data-id");
      var option = $("#sendBillSelector option:selected").val();
      if (option == 1) {
        $.ajax({
          url: 'index.php?page=shipHang&&act=YCLH',
          type: "POST",
          data: {
            idHD: idHD,
          },
          success: function (data) {
            swal({
              title: 'Thành công',
              text: 'Đã gửi yêu cầu !',
              icon: 'success',
              button: "OK",
            }).then(() => {
              window.location.reload();
            });
          },
          error: function (xhr, status, error) {
            console.log("Fail");
          }
        });
      } else if(option == 2) {
        $.ajax({
          url: 'index.php?page=shipHang&&act=NHH', //Nhận hoàn hàng
          type: "POST",
          data: {
            idHD: idHD,
          },
          success: function (data) {
            swal({
              title: 'Thành công',
              text: 'Đã gửi yêu cầu !',
              icon: 'success',
              button: "OK",
            }).then(() => {
              window.location.reload();
            });
          },
          error: function (xhr, status, error) {
            console.log("Fail");
          }
        })
      }else if(option==3){
        $.ajax({
          url: 'index.php?page=shipHang&&act=cancel', //Nhận hoàn hàng
          type: "POST",
          data: {
            idHD: idHD,
          },
          success: function (data) {
            swal({
              title: 'Thành công',
              text: 'Đã gửi yêu cầu !',
              icon: 'success',
              button: "OK",
            }).then(() => {
              window.location.reload();
            });
          },
          error: function (xhr, status, error) {
            console.log("Fail");
          }
        })
      }
      ;
    })
  }

  function deletePhieuDieu() {
    $(".deletePhieuBtn").click(function (e) {
      e.preventDefault();
      var idPhieu = $(this).attr("data-id");
      swal({
          title: "Xóa phiếu điều hàng ?",
          icon: "warning",
          dangerMode: true,
          buttons: true,
        })
        .then((willDelete) => {
          if (willDelete) {
            $.ajax({
              url: 'index.php?page=dieuhang&&act=deletePhieu',
              type: "POST",
              data: {
                idPhieu: idPhieu,
              },
              success: function (data) {
                swal({
                  title: 'Thành công',
                  text: 'Đã gửi yêu cầu !',
                  icon: 'success',
                  button: "OK",
                }).then(() => {
                  window.location.reload();
                });
              },
              error: function (xhr, status, error) {
                console.log("Fail");
              }
            });
          } else {
            swal("Ok! Hủy tác vụ ", {
              icon: 'error',
            });
          }
        });
    });
  }

  function nhanHang() {
    $(".recieveHangBtn").click(function (e) {
      e.preventDefault();
      var idPhieu = $(this).attr("data-id");
      swal({
          title: "Xác nhận nhận hàng ?",
          icon: "warning",
          dangerMode: true,
          buttons: true,
        })
        .then((willDelete) => {
          if (willDelete) {
            $.ajax({
              url: 'index.php?page=dieuhang&&act=UDPhieu2',
              type: "POST",
              data: {
                idPhieu: idPhieu,
              },
              success: function (data) {
                swal({
                  title: 'Thành công',
                  text: 'Đã gửi yêu cầu !',
                  icon: 'success',
                  button: "OK",
                }).then(() => {
                  window.location.reload();
                });
              },
              error: function (xhr, status, error) {
                console.log("Fail");
              }
            });
          } else {
            swal("Ok! Hủy tác vụ ", {
              icon: 'error',
            });
          }
        });
    });
  }

  function sendHang() {
    $(".sendHangBtn").click(function (e) {
      e.preventDefault();
      var idPhieu = $(this).attr("data-id");
      var idKho2 = $("#idKho2").val();
      swal({
          title: "Xác nhận gửi hàng ?",
          icon: "warning",
          dangerMode: true,
          buttons: true,
        })
        .then((willDelete) => {
          if (willDelete) {
            $.ajax({
              url: 'index.php?page=dieuhang&&act=UPPhieu',
              type: "POST",
              data: {
                idPhieu: idPhieu,
                idKho2: idKho2,
              },
              success: function (data) {
                swal({
                  title: 'Thành công',
                  text: 'Đã gửi yêu cầu !',
                  icon: 'success',
                  button: "OK",
                }).then(() => {
                  window.location.reload();
                });
              },
              error: function (xhr, status, error) {
                console.log("Fail");
              }
            });
          } else {
            swal("Ok! Hủy tác vụ ", {
              icon: 'error',
            });
          }
        });
    });
  }

  function DIEUHANG() {
    $(".dieuHangBtn").click(function (e) {
      e.preventDefault();
      var idCTSP = $(this).attr("data-id");
      $("#SendDieuHang").click(function (e) {
        e.preventDefault();
        var quantity = $("#Quantity").val();
        var idKho1 = $("#idKho1 option:selected").val();
        if (quantity == 0) {
          swal("Số lượng yêu cầu phải khác 0 ", {
            icon: 'error',
          });
        } else {
          swal({
              title: "Bạn muốn yêu cầu ?",
              icon: "warning",
              dangerMode: true,
              buttons: true,
            })
            .then((willDelete) => {
              if (willDelete) {
                $.ajax({
                  url: 'index.php?page=dieuhang&&act=sendPhieu',
                  type: "POST",
                  data: {
                    idCTSP: idCTSP,
                    quantity: quantity,
                    idKho1: idKho1,
                  },
                  success: function (data) {
                    swal({
                      title: 'Thành công',
                      text: 'Đã gửi yêu cầu !',
                      icon: 'success',
                      button: "OK",
                    }).then(() => {
                      window.location.reload();
                    });
                  },
                  error: function (xhr, status, error) {
                    console.log("Fail");
                  }
                });
              } else {
                swal("Ok! Hủy tác vụ ", {
                  icon: 'error',
                });
              }
            });
        }

      });

    });
  }

  function getBills() {
    $("#searchBillBtn").click(function (e) {
      e.preventDefault();
      var billOption = $("#BillOption option:selected").val();
      var option = $("#area").val();
      var option2 = $("#option2").val();
      if (billOption == 'allPhieu') {
        window.location.replace("index.php?page=dieuhang&&act=" + billOption);
      } else if (billOption == 'dieuhangdi') {
        if (option2 == "") {
          if (option == '') {
            window.location.replace("index.php?page=dieuhang&&act=" + billOption + "&&option=all");
          } else {
            window.location.replace("index.php?page=dieuhang&&option=" + option + "&&act=" + billOption);
          }
        } else {
          window.location.replace("index.php?page=dieuhang&&act=" + billOption + "&&option=" + option2);
        }
      } else if (billOption == 'dieuhangden') {
        if (option2 == "") {
          if (option == '') {
            window.location.replace("index.php?page=dieuhang&&act=" + billOption + "&&option=all");
          } else {
            window.location.replace("index.php?page=dieuhang&&option=" + option + "&&act=" + billOption);
          }
        } else {
          window.location.replace("index.php?page=dieuhang&&act=" + billOption + "&&option=" + option2);
        }
      } else {
        if (option2 == "") {
          if (option == '') {
            window.location.replace("index.php?page=bills&&act=" + billOption + "&&option=all");
          } else {
            window.location.replace("index.php?page=bills&&option=" + option + "&&act=" + billOption);
          }
        } else {
          window.location.replace("index.php?page=bills&&act=" + billOption + "&&option=" + option2);
        }
      }


    });
  }

  function ChangeUserRole() {
    $('.editRoleOption').click(function (e) {
      e.preventDefault();
      var idUser = $(this).attr("data-id");
      $("#btnSubmitChangeRole").click(function (e) {
        e.preventDefault();
        var note = $("#note2").val();
        var idRole = $("#idRole option:selected").val();
        swal({
            title: "Bạn muốn thay đổi ?",
            icon: "warning",
            dangerMode: true,
            buttons: true,
          })
          .then((willDelete) => {
            if (willDelete) {
              $.ajax({
                url: 'index.php?page=users&&act=UDRoleUser',
                type: "POST",
                data: {
                  idUser: idUser,
                  idRole: idRole,
                  note: note
                },
                success: function (data) {
                  swal({
                    title: 'Thành công',
                    text: 'Đã thay đổi !',
                    icon: 'success',
                    button: "OK",
                  }).then(() => {
                    window.location.reload();
                  });
                },
                error: function (xhr, status, error) {
                  console.log("Fail");
                }
              });
            } else {
              swal("Ok! Không đổi ", {
                icon: 'error',
              });
            }
          });
      });
    });
  }

  function UDUser() {
    $(".editUserbtn").click(function (e) {
      e.preventDefault();
      var idUser = $(this).attr("data-id");
      var stt = $("#UserAction option:selected").val();
      $("#submitUDUserBtn").click(function (e) {
        e.preventDefault();
        var note = $("#note").val();
        swal({
            title: "Bạn muốn thay đổi ?",
            icon: "warning",
            dangerMode: true,
            buttons: true,
          })
          .then((willDelete) => {
            if (willDelete) {
              $.ajax({
                url: 'index.php?page=users&&act=UDUser',
                type: "POST",
                data: {
                  idUser: idUser,
                  stt: stt,
                  note: note
                },
                success: function (data) {
                  swal({
                    title: 'Thành công',
                    text: 'Đã thay đổi !',
                    icon: 'success',
                    button: "OK",
                  }).then(() => {
                    window.location.reload();
                  });
                },
                error: function (xhr, status, error) {
                  console.log("Fail");
                }
              });
            } else {
              swal("Ok! Không đổi ", {
                icon: 'error',
              });
            }
          });
      });
    });
  }

  function createUser() {
    $("#addUserBtn").click(function (e) {
      e.preventDefault();
      var username = $("#username").val();
      var fullName = $("#fullName").val();
      var email = $("#email").val();
      var idRole = $("#idRole option:selected").val();
      var note = $("#note").val();
      if (username == '' || fullName == '' || email == '') {
        swal("Thông tin rỗng ", {
          icon: 'error',
        });
      } else {
        swal({
            title: "Bạn muốn tạo tài khoản?",
            icon: "warning",
            dangerMode: true,
            buttons: true,
          })
          .then((willDelete) => {
            if (willDelete) {
              $.ajax({
                url: 'index.php?page=users&&act=createUser',
                type: "POST",
                data: {
                  username: username,
                  fullName: fullName,
                  email: email,
                  idRole: idRole,
                  note: note,
                },
                success: function (data) {
                  swal({
                    title: 'Thành công',
                    text: 'Đã tạo thành công !',
                    icon: 'success',
                    button: "OK",
                  }).then(() => {
                    window.location.reload();
                  });
                },
                error: function (xhr, status, error) {
                  console.log("Fail");
                }
              });
            }
          });
      }
    })
  }

  function deleteRole() {
    $('.deleteRole').click(function (e) {
      e.preventDefault();
      var idRole = $(this).attr("data-id");
      swal({
          title: "Bạn muốn xóa Role?",
          icon: "warning",
          dangerMode: true,
          buttons: true,
        })
        .then((willDelete) => {
          if (willDelete) {
            $.ajax({
              url: 'index.php?page=users&&act=deleteRole',
              type: "POST",
              data: {
                idRole: idRole,
              },
              success: function (data) {
                swal({
                  title: 'Thành công',
                  text: 'Đã xóa Role !',
                  icon: 'success',
                  button: "OK",
                }).then(() => {
                  window.location.reload();
                });
              },
              error: function (xhr, status, error) {
                console.log("Fail");
              }
            });
          } else {
            swal("Ok! Không xóa ", {
              icon: 'error',
            });
          }
        });
    });
  }

  function editRole() {
    $('#submitEditRole').click(function (e) {
      e.preventDefault();
      var newRole = $("#newRole").val();
      var idRole = $("#idRole option:selected").val();
      if (newRole == '') {
        swal({
          title: 'Thất bại',
          text: 'Thông tin rỗng',
          icon: 'error',
          button: "OK",
        }).then(() => {
          window.location.reload();
        });
      } else {
        $.ajax({
          url: 'index.php?page=users&&act=editRole',
          type: "POST",
          data: {
            newRole: newRole,
            idRole: idRole
          },
          success: function (data) {
            swal({
              title: 'Thành công',
              text: 'Đã sửa Role !',
              icon: 'success',
              button: "OK",
            }).then(() => {
              window.location.reload();
            });
          },
          error: function (xhr, status, error) {
            console.log("Fail");
          }
        });
      }
    });
  }

  function addRole() {
    $('#addRoleBtn').click(function (e) {
      e.preventDefault();
      var RoleName = $("#RoleName").val();
      if (RoleName == '') {
        swal({
          title: 'Thất bại',
          text: 'Thông tin rỗng',
          icon: 'error',
          button: "OK",
        }).then(() => {
          window.location.reload();
        });
      } else {
        $.ajax({
          url: 'index.php?page=users&&act=addRole',
          type: "POST",
          data: {
            RoleName: RoleName
          },
          success: function (data) {
            swal({
              title: 'Thành công',
              text: 'Đã thêm Role !',
              icon: 'success',
              button: "OK",
            }).then(() => {
              window.location.reload();
            });
          },
          error: function (xhr, status, error) {
            console.log("Fail");
          }
        });
      }
    });
  }

  function addPVCOther() {
    $("#addOther").click(function (e) {
      e.preventDefault();
      var PVC = $("#PVCOTher").val();
      $.ajax({
        url: 'index.php?page=transport&&act=addPVCOT',
        type: "POST",
        data: {
          PVC: PVC
        },
        success: function (data) {
          swal({
            title: 'Thành công',
            text: 'Đã thêm phí !',
            icon: 'success',
            button: "OK",
          }).then(() => {
            window.location.reload();
          });
        },
        error: function (xhr, status, error) {
          console.log("Fail");
        }
      });
    });
  }

  function UDPVC() {
    $("#btnThemPVC").click(function (e) {
      e.preventDefault();
      var maTinh = $("#idTinh option:selected").val();
      var PVC = $("#PhiVanChuyen").val();
      $.ajax({
        url: 'index.php?page=transport&&act=addPVC',
        type: "POST",
        data: {
          maTinh: maTinh,
          PVC: PVC
        },
        success: function (data) {
          swal({
            title: 'Thành công',
            text: 'Đã thêm phí !',
            icon: 'success',
            button: "OK",
          }).then(() => {
            window.location.reload();
          });
        },
        error: function (xhr, status, error) {
          console.log("Fail");
        }
      });

    });
  }

  function editTinh() {
    $('.editTinh').click(function (e) {
      e.preventDefault();
      var idTinh = $(this).attr("data-id");
      $("#subeditTinhBtn").click(function (e) {
        e.preventDefault();
        var newTinh = $("#newTinh").val();
        if (newTinh == '') {
          swal("Thông tin rỗng ", {
            icon: 'error',
          });
        } else {
          swal({
              title: "Bạn muốn đổi tên tỉnh ?",
              icon: "warning",
              dangerMode: true,
              buttons: true,
            })
            .then((willDelete) => {
              if (willDelete) {
                $.ajax({
                  url: 'index.php?page=transport&&act=editTinh',
                  type: "POST",
                  data: {
                    idTinh: idTinh,
                    newTinh: newTinh
                  },
                  success: function (data) {
                    swal({
                      title: 'Thành công',
                      text: 'Đã đổi tỉnh !',
                      icon: 'success',
                      button: "OK",
                    }).then(() => {
                      window.location.reload();
                    });
                  },
                  error: function (xhr, status, error) {
                    console.log("Fail");
                  }
                });
              } else {
                swal("Ok! Không đổi ", {
                  icon: 'error',
                });
              }
            });
        }
      });
    });
  }

  function deleteTinh() {
    $('.deleteTinh').click(function (e) {
      e.preventDefault();
      var idTinh = $(this).attr("data-id");

      swal({
          title: "Bạn muốn xóa tỉnh ?",
          icon: "warning",
          dangerMode: true,
          buttons: true,
        })
        .then((willDelete) => {
          if (willDelete) {
            $.ajax({
              url: 'index.php?page=transport&&act=deleteTinh',
              type: "POST",
              data: {
                idTinh: idTinh,
              },
              success: function (data) {
                swal({
                  title: 'Thành công',
                  text: 'Đã xóa tỉnh !',
                  icon: 'success',
                  button: "OK",
                }).then(() => {
                  window.location.reload();
                });
              },
              error: function (xhr, status, error) {
                console.log("Fail");
              }
            });
          } else {
            swal("Ok! Không xóa ", {
              icon: 'error',
            });
          }
        });

    });
  }

  function editMien() {
    $(".editMien").click(function (e) {
      e.preventDefault();
      var idMien = $(this).attr("data-id");
      $("#submitNewMienBtn").click(function (e) {
        e.preventDefault();
        var newMien = $("#tenMienMoi").val();
        if (newMien == '') {
          swal("Thông tin rỗng !", {
            icon: 'error',
          });
        } else {
          swal({
              title: "Bạn muốn đổi tên miền ?",
              icon: "warning",
              dangerMode: true,
              buttons: true,
            })
            .then((willDelete) => {
              if (willDelete) {
                $.ajax({
                  url: 'index.php?page=transport&&act=editTenMien',
                  type: "POST",
                  data: {
                    idMien: idMien,
                    newMien: newMien
                  },
                  success: function (data) {
                    swal({
                      title: 'Thành công',
                      text: 'Đã đổi miền !',
                      icon: 'success',
                      button: "OK",
                    }).then(() => {
                      window.location.reload();
                    });
                  },
                  error: function (xhr, status, error) {
                    console.log("Fail");
                  }
                });
              } else {
                swal("Ok! Không đổi ", {
                  icon: 'error',
                });
              }
            });
        }
      });
    });

  }

  function deleteMien() {
    $('.deleteMien').click(function (e) {
      e.preventDefault();
      var idMien = $(this).attr("data-id");

      swal({
          title: "Bạn muốn xóa miền ?",
          icon: "warning",
          dangerMode: true,
          buttons: true,
        })
        .then((willDelete) => {
          if (willDelete) {
            $.ajax({
              url: 'index.php?page=transport&&act=deleteMien',
              type: "POST",
              data: {
                idMien: idMien,
              },
              success: function (data) {
                swal({
                  title: 'Thành công',
                  text: 'Đã xóa miền !',
                  icon: 'success',
                  button: "OK",
                }).then(() => {
                  window.location.reload();
                });
              },
              error: function (xhr, status, error) {
                console.log("Fail");
              }
            });
          } else {
            swal("Ok! Không xóa ", {
              icon: 'error',
            });
          }
        });

    });
  }

  function addTinh() {
    $('#submitTinh').click(function (e) {
      e.preventDefault();
      var idMien = $("#myselect option:selected").val();
      var tenTinh = $("#tenTinh").val();
      if (tenTinh == '') {
        swal({
          title: 'Thất bại',
          text: 'Thông tin rỗng !',
          icon: 'error',
          button: "OK",
        }).then(() => {
          window.location.reload();
        });
      } else {
        $.ajax({
          url: 'index.php?page=transport&&act=addTinh',
          type: "POST",
          data: {
            idMien: idMien,
            tenTinh: tenTinh,
          },
          success: function (data) {
            swal({
              title: 'Thành công',
              text: 'Đã thêm !',
              icon: 'success',
              button: "OK",
            }).then(() => {
              window.location.reload();
            });
          },
          error: function (xhr, status, error) {
            console.log("Fail");
          }
        });
      }

    });
  }

  function addMien() {
    $('#submitMien').click(function (e) {
      e.preventDefault();
      var tenMien = $("#TenMien").val();
      if (tenMien == '') {
        swal({
          title: 'Thất bại',
          text: 'Thông tin rỗng !',
          icon: 'error',
          button: "OK",
        }).then(() => {
          window.location.reload();
        });
      } else {
        $.ajax({
          url: 'index.php?page=transport&&act=addMien',
          type: "POST",
          data: {
            tenMien: tenMien,
          },
          success: function (data) {
            swal({
              title: 'Thành công',
              text: 'Đã thêm !',
              icon: 'success',
              button: "OK",
            }).then(() => {
              window.location.reload();
            });
          },
          error: function (xhr, status, error) {
            console.log("Fail");
          }
        });
      }
    })
  }

  function showHideProd() {
    $('.switchBtn').click(function (e) {
      e.preventDefault();
      var idProd = $(this).attr("data-id");
      $.ajax({
        url: 'index.php?page=product&&act=switchProduct',
        type: "POST",
        data: {
          idProd: idProd,
        },
        success: function (data) {
          swal({
            title: 'Thành công',
            text: 'Đã thay đổi !',
            icon: 'success',
            button: "OK",
          }).then(() => {
            window.location.reload();
          });
        },
        error: function (xhr, status, error) {
          console.log("Fail");
        }
      });
    });
  }

  function editPrice() {
    $('.PriceEditBtn').click(function (e) {
      e.preventDefault();
      var idCT = $(this).attr("data-id");
      $(".EditPriceArea").show();
      $('.editPricebtn').click(function (e) {
        e.preventDefault();
        var newPrice = $("#newPrice").val();
        if (newPrice == '') {
          swal({
            title: 'Thất bại',
            text: 'Thông tin rỗng !',
            icon: 'error',
            button: "OK",
          }).then(() => {
            window.location.reload();
          });
        } else {
          $.ajax({
            url: 'index.php?page=product&&act=SinglePrice',
            type: "POST",
            data: {
              idCT: idCT,
              newPrice: newPrice,
            },
            success: function (data) {
              swal({
                title: 'Thành công',
                text: 'Đã cập nhật giá !',
                icon: 'success',
                button: "OK",
              }).then(() => {
                window.location.reload();
              });
            },
            error: function (xhr, status, error) {
              console.log("Fail");
            }
          });
        }
      });
    });
  }

  function addImg2() {
    $('.chooseImg2').click(function (e) {
      e.preventDefault();
      var imgName = $(this).attr("data-id");
      var idProd = $("#idProd").val();
      $.ajax({
        url: 'index.php?page=product&&act=selectImg2',
        type: "POST",
        data: {
          imgName: imgName,
          idProd: idProd,
        },
        success: function (data) {
          swal({
            title: 'Thành công',
            text: 'Đã cập nhập hình ảnh 2 !',
            icon: 'success',
            button: "OK",
          }).then(() => {
            window.location.reload();
          });
        },
        error: function (xhr, status, error) {
          console.log("Fail");
        }
      });
    });
  }

  function addImg1() {
    $('.chooseImg1').click(function (e) {
      e.preventDefault();
      var imgName = $(this).attr("data-id");
      var idProd = $("#idProd").val();
      console.log(idProd, imgName);
      $.ajax({
        url: 'index.php?page=product&&act=selectImg1',
        type: "POST",
        data: {
          imgName: imgName,
          idProd: idProd,
        },
        success: function (data) {
          swal({
            title: 'Thành công',
            text: 'Đã cập nhập hình ảnh 1 !',
            icon: 'success',
            button: "OK",
          }).then(() => {
            window.location.reload();
          });
        },
        error: function (xhr, status, error) {
          console.log("Fail");
        }
      });
    });
  }

  function deleteSingleProductImage() {
    $('.deleteImage').click(function (e) {
      e.preventDefault();
      var idGallery = $(this).attr("data-id");
      swal({
          title: "Bạn muốn xóa hình ảnh này ?",
          icon: "warning",
          dangerMode: true,
          buttons: true,
        })
        .then((willDelete) => {
          if (willDelete) {
            $.ajax({
              url: 'index.php?page=product&&act=deleteSingleImage',
              type: "POST",
              data: {
                idGallery: idGallery,
              },
              success: function (data) {
                swal({
                  title: 'Thành công',
                  text: 'Đã xóa hình ảnh !',
                  icon: 'success',
                  button: "OK",
                }).then(() => {
                  window.location.reload();
                });
              },
              error: function (xhr, status, error) {
                console.log("Fail");
              }
            });
          } else {
            swal("Ok! Không dổi ", {
              icon: 'error',
            });
          }
        });
    });
  }

  function closeAlert() {
    $('.close').click(function (e) {
      e.preventDefault();
      $('#alert').removeClass();
      $('#alert').addClass('alert hide');
    });
  }

  function deleteProd() {
    $('.delProdBtn').click(function (e) {
      e.preventDefault();
      var idProd = $(this).attr("data-id");

      swal({
          title: "Bạn muốn xóa sản phẩm này ?",
          icon: "warning",
          dangerMode: true,
          buttons: true,
        })
        .then((willDelete) => {
          if (willDelete) {
            $.ajax({
              url: 'index.php?page=product&&act=deleteProduct',
              type: "POST",
              data: {
                idProd: idProd,
              },
              success: function (data) {
                swal({
                  title: 'Thành công',
                  text: 'Đã xóa sản phẩm !',
                  icon: 'success',
                  button: "OK",
                }).then(() => {
                  window.location.reload();
                });
              },
              error: function (xhr, status, error) {
                console.log("Fail");
              }
            });
          } else {
            swal("Ok! Không dổi ", {
              icon: 'error',
            });
          }
        });
    });
  }

  function updateTonKho() {
    $('#UDQTYBTN').click(function (e) {
      e.preventDefault();
      var idTon = $(this).attr('data-id');
      var soLuongTonKho = $("#soLuongTon").val();
      var idProd = $("#idProd").val();
      if (soLuongTonKho == '') {
        swal({
          title: 'Thất bại',
          text: 'Dữ liệu rỗng',
          icon: 'error',
          button: "OK",
        }).then(() => {
          window.location.reload();
        });
      } else {
        swal({
            title: "Bạn muốn thay đổi chứ ?",
            icon: "warning",
            buttons: true,
            dangerMode: true,
          })
          .then((willDelete) => {
            if (willDelete) {
              $.ajax({
                url: 'index.php?page=storage&&act=UDStorage',
                type: "POST",
                data: {
                  idTon: idTon,
                  soLuongTonKho: soLuongTonKho,
                },
                success: function (data) {
                  swal({
                    title: 'Thành công',
                    text: 'Đã gửi yêu cầu !',
                    icon: 'success',
                    button: "OK",
                  }).then(() => {
                    window.location.replace(
                      "index.php?page=storage&&act=singleProd&&option=singleProduct&&idProd=" +
                      idProd);
                  });
                },
                error: function (xhr, status, error) {
                  console.log("Fail");
                }
              });
            } else {
              swal("Ok! Không xóa", {
                icon: 'error',
              });
            }
          });
      }

    });
  }

  function deleteCTSP() {
    $('.deleteCTSP').click(function (e) {
      e.preventDefault();
      var idCTSP = $(this).attr('data-id');
      console.log(idCTSP);
      swal({
          title: "Bạn muốn xóa chứ ?",
          icon: "warning",
          buttons: true,
          dangerMode: true,
        })
        .then((willDelete) => {
          if (willDelete) {
            $.ajax({
              url: 'index.php?page=product&&act=xoaCTSP',
              type: "POST",
              data: {
                idCTSP: idCTSP
              },
              success: function (data) {
                swal({
                  title: 'Thành công',
                  text: 'Đã xóa thành công',
                  icon: 'success',
                  button: "OK",
                }).then(() => {
                  window.location.reload();
                });
              },
              error: function (xhr, status, error) {
                console.log("Fail");
              }
            });
          } else {
            swal("Ok! Không xóa", {
              icon: 'error',
            });
          }
        });
    });
  }

  function editThietBi() {
    $('.editTB').click(function (e) {
      e.preventDefault();
      var idThietBi = $(this).attr('data-id');
      $(".addForm").hide();
      $(".editForm").show();
      $('#EditTBBtn').click(function (e) {
        e.preventDefault();
        var newTB = $("#tenTBMoi").val();
        if (newTB == '') {
          swal({
            title: 'Thất bại',
            text: 'Thông tin rỗng !',
            icon: 'error',
            button: "OK",
          }).then(() => {
            window.location.reload();
          });
        } else {
          swal({
              title: "Bạn muốn thay đổi chứ ?",
              icon: "warning",
              buttons: true,
              dangerMode: true,
            })
            .then((willDelete) => {
              if (willDelete) {
                if (newTB != '') {
                  $.ajax({
                    url: 'index.php?page=tb&&act=edit',
                    type: "POST",
                    data: {
                      newTB: newTB,
                      idThietBi: idThietBi,
                    },
                    success: function (data) {
                      swal({
                        title: 'Thành công',
                        text: 'Đã thay đổi thành công',
                        icon: 'success',
                        button: "OK",
                      }).then(() => {
                        window.location.reload();
                      });
                    },
                    error: function (xhr, status, error) {
                      console.log("Fail");
                    }
                  });
                } else {
                  swal({
                    title: 'Thất bại',
                    text: 'Nội dung trống! ',
                    icon: 'error',
                    button: "OK",
                  })
                }

              } else {
                swal("Ok! Không đổi", {
                  icon: 'error',
                });
              }
            });
        }

      });
    });
  }

  function deleteThietBi() {
    $('.deleteTB').click(function (e) {
      e.preventDefault();
      var idThietBi = $(this).attr('data-id');
      swal({
          title: "Bạn muốn xóa chứ ?",
          icon: "warning",
          buttons: true,
          dangerMode: true,
        })
        .then((willDelete) => {
          if (willDelete) {
            $.ajax({
              url: 'index.php?page=tb&&act=delete',
              type: "POST",
              data: {
                idThietBi: idThietBi
              },
              success: function (data) {
                swal({
                  title: 'Thành công',
                  text: 'Đã xóa thành công',
                  icon: 'success',
                  button: "OK",
                }).then(() => {
                  window.location.reload();
                });
              },
              error: function (xhr, status, error) {
                console.log("Fail");
              }
            });
          } else {
            swal("Ok! Không xóa", {
              icon: 'error',
            });
          }
        });
    });
  }

  function addThietBi() {
    $('#AddTBBtn').click(function (e) {
      e.preventDefault();
      var tenTB = $('#tenTB').val();
      if (tenTB == '') {
        swal({
          title: 'Thất bại',
          text: 'Nội dung trống! ',
          icon: 'error',
          button: "OK",
        })
      } else {
        $.ajax({
          url: 'index.php?page=tb&&act=add',
          type: "POST",
          data: {
            tenTB: tenTB
          },
          success: function (data) {
            swal({
              title: 'Thành công',
              text: 'Đã gửi yêu cầu',
              icon: 'success',
              button: "OK",
            }).then(() => {
              window.location.reload();
            });
          },
        });
      }
    });
  }

  function editBrand() {
    $('.editBrand').click(function (e) {
      e.preventDefault();
      var idBrand = $(this).attr('data-id');
      $(".addForm").hide();
      $(".editForm").show();
      $('#editBrandBtn').click(function (e) {
        e.preventDefault();
        var newBrand = $("#NewBrandName").val();
        swal({
            title: "Bạn muốn thay đổi chứ ?",
            icon: "warning",
            buttons: true,
            dangerMode: true,
          })
          .then((willDelete) => {
            if (willDelete) {
              if (newBrand != '') {
                $.ajax({
                  url: 'index.php?page=brand&&act=editBrand',
                  type: "POST",
                  data: {
                    newBrand: newBrand,
                    idBrand: idBrand,
                  },
                  success: function (data) {
                    swal({
                      title: 'Thành công',
                      text: 'Đã thay đổi thành công',
                      icon: 'success',
                      button: "OK",
                    }).then(() => {
                      window.location.reload();
                    });
                  },
                  error: function (xhr, status, error) {
                    console.log("Fail");
                  }
                });
              } else {
                swal({
                  title: 'Thất bại',
                  text: 'Nội dung trống! ',
                  icon: 'error',
                  button: "OK",
                })
              }

            } else {
              swal("Ok! Không đổi", {
                icon: 'error',
              });
            }
          });
      });

    });
  }

  function deleteBrand() {
    $('.deleteBrand').click(function (e) {
      e.preventDefault();
      var idBrand = $(this).attr('data-id');

      swal({
          title: "Bạn muốn xóa chứ ?",
          icon: "warning",
          buttons: true,
          dangerMode: true,
        })
        .then((willDelete) => {
          if (willDelete) {
            $.ajax({
              url: 'index.php?page=brand&&act=deleteBrand',
              type: "POST",
              data: {
                idBrand: idBrand
              },
              success: function (data) {
                swal({
                  title: 'Thành công',
                  text: 'Đã xóa thành công',
                  icon: 'success',
                  button: "OK",
                }).then(() => {
                  window.location.reload();
                });
              },
              error: function (xhr, status, error) {
                console.log("Fail");
              }
            });
          } else {
            swal("Ok! Không xóa", {
              icon: 'error',
            });
          }
        });
    });
  }

  function addBrand() {
    $("#addBrandBtn").click(function (e) {
      e.preventDefault();
      var BrandName = $("#BrandName").val();

      if (BrandName == '') {
        swal({
          title: 'Thất bại',
          text: 'Nội dung trống! ',
          icon: 'error',
          button: "OK",
        })
      } else {
        $.ajax({
          url: 'index.php?page=brand&&act=addBrand',
          type: "POST",
          data: {
            BrandName: BrandName
          },
          success: function (data) {
            swal({
              title: 'Thành công',
              text: 'Đã gửi yêu cầu',
              icon: 'success',
              button: "OK",
            }).then(() => {
              window.location.reload();
            });
          },
        });
      }
    });
  }

  function editKey() {
    $(".editKey").click(function (e) {
      e.preventDefault();
      $(".addForm").hide();
      $(".editForm").show();
      var idKey = $(this).attr('data-id');
      $('#editKeyWord').click(function (e) {
        e.preventDefault();
        var newKeyWord = $('#newKeyWord').val();

        swal({
            title: "Bạn muốn thay đổi chứ ?",
            icon: "warning",
            buttons: true,
            dangerMode: true,
          })
          .then((willDelete) => {
            if (willDelete) {
              if (newKeyWord != '') {
                $.ajax({
                  url: 'index.php?page=product&&act=editTag',
                  type: "POST",
                  data: {
                    newKeyWord: newKeyWord,
                    idKey: idKey,
                  },
                  success: function (data) {
                    swal({
                      title: 'Thành công',
                      text: 'Đã thay đổi thành công',
                      icon: 'success',
                      button: "OK",
                    }).then(() => {
                      window.location.reload();
                    });
                  },
                  error: function (xhr, status, error) {
                    console.log("Fail");
                  }
                });
              } else {
                swal({
                  title: 'Thất bại',
                  text: 'Nội dung trống! ',
                  icon: 'error',
                  button: "OK",
                })
              }

            } else {
              swal("Ok! Không đổi", {
                icon: 'error',
              });
            }
          });
      });
    });
  }

  function deleteKey() {
    $('.deleteKey').click(function (e) {
      e.preventDefault();
      var idKey = $(this).attr('data-id');

      swal({
          title: "Bạn muốn xóa chứ ?",
          icon: "warning",
          buttons: true,
          dangerMode: true,
        })
        .then((willDelete) => {
          if (willDelete) {
            $.ajax({
              url: 'index.php?page=product&&act=deleteTag',
              type: "POST",
              data: {
                idKey: idKey
              },
              success: function (data) {
                swal({
                  title: 'Thành công',
                  text: 'Đã xóa thành công',
                  icon: 'success',
                  button: "OK",
                }).then(() => {
                  window.location.reload();
                });
              },
              error: function (xhr, status, error) {
                console.log("Fail");
              }
            });
          } else {
            swal("Ok! Không xóa", {
              icon: 'error',
            });
          }
        });
    });
  }

  function addKey() {
    $('#addKeyBtn').click(function (e) {
      e.preventDefault();
      var keyWord = $("#keyWord").val();
      if (keyWord == '') {
        swal({
          title: 'Thất bại',
          text: 'Nội dung trống! ',
          icon: 'error',
          button: "OK",
        })
      } else {
        $.ajax({
          url: 'index.php?page=product&&act=addTag',
          type: "POST",
          data: {
            keyWord: keyWord
          },
          success: function (data) {
            swal({
              title: 'Thành công',
              text: 'Đã gửi yêu cầu',
              icon: 'success',
              button: "OK",
            }).then(() => {
              window.location.reload();
            });
          },
        });
      }
    });
  }

  function selectors() {
    var multipleCancelButton = new Choices('#choices-multiple-remove-button', {
      removeItemButton: true,
      maxItemCount: 4,
      searchResultLimit: 5,
      renderChoiceLimit: 5
    });
  }

  function editStorage() {
    $('.editKho').click(function (e) {
      e.preventDefault();
      $(".editForm").show();
      var idKho = $(this).attr('data-id');
      $('#updateStorageBtn').click(function (e) {
        e.preventDefault();
        var maKhoMoi = $("#maKhoMoi").val();
        var thongTinMoi = $("#thongTinMoi").val();
        swal({
            title: "Bạn muốn thay đổi chứ ?",
            icon: "warning",
            buttons: true,
            dangerMode: true,
          })
          .then((willDelete) => {
            if (willDelete) {
              if (maKhoMoi != '' && thongTinMoi != '') {
                $.ajax({
                  url: 'index.php?page=storage&&act=updateStorage',
                  type: "POST",
                  data: {
                    maKhoMoi: maKhoMoi,
                    thongTinMoi: thongTinMoi,
                    idKho: idKho
                  },
                  success: function (data) {
                    swal({
                      title: 'Thành công',
                      text: 'Đã thay đổi thành công',
                      icon: 'success',
                      button: "OK",
                    }).then(() => {
                      window.location.reload();
                    });
                  },
                  error: function (xhr, status, error) {
                    console.log("Fail");
                  }
                });
              } else {
                swal({
                  title: 'Thất bại',
                  text: 'Nội dung trống! ',
                  icon: 'error',
                  button: "OK",
                })
              }

            } else {
              swal("Ok! Không đổi", {
                icon: 'error',
              });
            }
          });
      });
    });
  }

  function deleteKho() {
    $('.delKho').click(function (e) {
      e.preventDefault();
      var idKho = $(this).attr('data-id');
      swal({
          title: "Bạn muốn xóa chứ ?",
          icon: "warning",
          buttons: true,
          dangerMode: true,
        })
        .then((willDelete) => {
          if (willDelete) {
            $.ajax({
              url: 'index.php?page=storage&&act=deleteStorage',
              type: "POST",
              data: {
                idKho: idKho
              },
              success: function (data) {
                swal({
                  title: 'Thành công',
                  text: 'Đã xóa thành công',
                  icon: 'success',
                  button: "OK",
                }).then(() => {
                  window.location.reload();
                });
              },
              error: function (xhr, status, error) {
                console.log("Fail");
              }
            });
          } else {
            swal("Ok! Không xóa", {
              icon: 'error',
            });
          }
        });
    });
  }

  function addKhoHang() {
    $('#addStoreBtn').click(function (e) {
      e.preventDefault();
      var maKho = $("#maKho").val();
      var thongTin = $("#thongTin").val();
      if (maKho != '' && thongTin != '') {
        $.ajax({
          url: 'index.php?page=storage&&act=addStorage',
          type: "POST",
          data: {
            maKho: maKho,
            thongTin: thongTin
          },
          success: function (data) {
            swal({
              title: 'Thành công',
              text: 'Đã gửi yêu cầu',
              icon: 'success',
              button: "OK",
            }).then(() => {
              window.location.reload();
            });
          },
        });

      } else {
        swal({
          title: 'Thất bại',
          text: 'Nội dung trống',
          icon: 'error',
          button: "OK",
        }).then(() => {
          window.location.reload();
        });
      }
    });
  }

  function delColor() {
    $('.delColor').click(function (e) {
      e.preventDefault();
      var idMaMauCu = $(this).attr("data-id");
      swal({
          title: "Bạn muốn xóa chứ ?",
          icon: "warning",
          buttons: true,
          dangerMode: true,
        })
        .then((willDelete) => {
          if (willDelete) {
            $.ajax({
              url: 'index.php?page=color&&act=delColor',
              type: "POST",
              data: {
                idMaMauCu: idMaMauCu
              },
              success: function (data) {
                swal({
                  title: 'Thành công',
                  text: 'Đã xóa thành công',
                  icon: 'success',
                  button: "OK",
                }).then(() => {
                  window.location.reload();
                });
              },
              error: function (xhr, status, error) {
                console.log("Fail");
              }
            });
          } else {
            swal("Ok! Không xóa", {
              icon: 'error',
            });
          }
        });
    });
  }

  function editColor() {
    $('.editColor').click(function (e) {
      e.preventDefault();
      $(".addForm").hide();
      $(".editForm").show();
      var idMaMauCu = $(this).attr("data-id");
      $("#editColorBtn").click(function (e) {
        e.preventDefault();
        $('#editColorBtn').click(function (e) {
          e.preventDefault();
          var tenMauMoi = $("#newColor").val();
          var maMauMoi = $("#newColorCode").val();
          swal({
              title: "Bạn muốn thay đổi chứ ?",
              icon: "warning",
              buttons: true,
              dangerMode: true,
            })
            .then((willDelete) => {
              if (willDelete) {
                if (tenMauMoi != '' && maMauMoi != '') {
                  $.ajax({
                    url: 'index.php?page=color&&act=editColor',
                    type: "POST",
                    data: {
                      tenMauMoi: tenMauMoi,
                      maMauMoi: maMauMoi,
                      idMaMauCu: idMaMauCu
                    },
                    success: function (data) {
                      swal({
                        title: 'Thành công',
                        text: 'Đã thay đổi thành công',
                        icon: 'success',
                        button: "OK",
                      }).then(() => {
                        window.location.reload();
                      });
                    },
                    error: function (xhr, status, error) {
                      console.log("Fail");
                    }
                  });
                } else {
                  swal({
                    title: 'Thất bại',
                    text: 'Nội dung trống! ',
                    icon: 'error',
                    button: "OK",
                  })
                }

              } else {
                swal("Ok! Không đổi", {
                  icon: 'error',
                });
              }
            });
        });
      });
    });
  }

  function addColor() {
    $('#addColorBtn').click(function (e) {
      e.preventDefault();
      var ColorName = $("#ColorName").val();
      var ColorCode = $("#ColorCode").val();
      if (ColorName != '' && ColorCode != '') {
        $.ajax({
          url: 'index.php?page=color&&act=addColor',
          type: "POST",
          data: {
            tenMau: ColorName,
            maMau: ColorCode
          },
          success: function (data) {
            swal({
              title: 'Thành công',
              text: 'Đã gửi yêu cầu',
              icon: 'success',
              button: "OK",
            }).then(() => {
              window.location.reload();
            });
          },
        });

      } else {
        swal({
          title: 'Thất bại',
          text: 'Nội dung trống',
          icon: 'error',
          button: "OK",
        }).then(() => {
          window.location.reload();
        });
      }
    });
  }

  function editDungLuong() {
    $('.editDungLuong').click(function (e) {
      e.preventDefault();
      var idDungLuong = $(this).attr("data-id");
      $(".editForm").show();
      $(".addForm").hide();
      $('#editDungLuongBtn').click(function (e) {
        e.preventDefault();
        var newDungLuong = $("#newDungLuong").val();
        swal({
            title: "Bạn muốn thay đổi chứ ?",
            icon: "warning",
            buttons: true,
            dangerMode: true,
          })
          .then((willDelete) => {
            if (willDelete) {
              $.ajax({
                url: 'index.php?page=dungluong&&act=editDungLuong',
                type: "POST",
                data: {
                  idDungLuong: idDungLuong,
                  newDungLuong: newDungLuong
                },
                success: function (data) {
                  swal({
                    title: 'Thành công',
                    text: 'Đã thay đổi thành công',
                    icon: 'success',
                    button: "OK",
                  }).then(() => {
                    window.location.reload();
                  });
                },
                error: function (xhr, status, error) {
                  console.log("Fail");
                }
              });
            } else {
              swal("Ok! Không đổi", {
                icon: 'error',
              });
            }
          });
      });

    });

  }

  function delDungLuong() {
    $('.delDungLuong').click(function (e) {
      e.preventDefault();
      var idDungLuong = $(this).attr("data-id");
      swal({
          title: "Bạn muốn xóa chứ ?",
          icon: "warning",
          buttons: true,
          dangerMode: true,
        })
        .then((willDelete) => {
          if (willDelete) {
            $.ajax({
              url: 'index.php?page=dungluong&&act=delDungLuong',
              type: "POST",
              data: {
                idDungLuong: idDungLuong
              },
              success: function (data) {
                swal({
                  title: 'Thành công',
                  text: 'Đã xóa thành công',
                  icon: 'success',
                  button: "OK",
                }).then(() => {
                  window.location.reload();
                });
              },
              error: function (xhr, status, error) {
                console.log("Fail");
              }
            });
          } else {
            swal("Ok! Không xóa", {
              icon: 'error',
            });
          }
        });
    });
  }

  function addDungLuong() {
    $('#addDungLuongBtn').click(function (e) {
      e.preventDefault();
      var DungLuong = $("#DungLuong").val();
      if (DungLuong != '') {
        console.log(DungLuong);
        $.ajax({
          url: 'index.php?page=dungluong&&act=addDungLuong',
          type: "POST",
          data: {
            DungLuong: DungLuong
          },
          success: function (data) {
            swal({
              title: 'Thành công',
              text: 'Đã gửi yêu cầu',
              icon: 'success',
              button: "OK",
            }).then(() => {
              window.location.reload();
            });
          },
        });

      } else {
        swal({
          title: 'Thất bại',
          text: 'Nội dung trống',
          icon: 'error',
          button: "OK",
        }).then(() => {
          window.location.reload();
        });
      }
    })
  }
</script>