(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 2)
 '(custom-safe-themes
   (quote
    ("c6802558b8f36fee94c6df1d9fd596a1023f79f1065cdc3124e47c88e7c9e082" "71681095298809d9c333abb4d044e20503eafb5d284b3fb6e61a0b3a7adc0346" "35689a46cb7453ab2a09d02100a66e918fa1f6fabf1bd0c1959c883ab675b832" "01b89d469bacd07d1762b90d1476d9aad6159ab6d28408bdaa7b6718c330cbbd" "c25b3c182058e8257746b5af7bf339b53d9c2ae7b09600cd0d0e95e9b09e2b0b" "4ad4fe062e48095a314d0d865d85687e96b99dac20727cc16aea74acd6fd0bba" "e5e133248e0aca7ab898ed9c0965b6935b94fb0867608a8299e77493c4833fa5" "8fb23022b2c3134cd469e0122a0fd82ca6be7e055490264b8e6aff9067b8ddb4" "20be2dca684c3d99792dd9958c8c19e926c7dc33b97a1a61cb1f152a4274b513" "7caab5a9c415bb5ed6b9a4e3daa6b438ee5682f43bcc2902f630a3800b2d82b8" "0ae977e603e99d89c80d679377bfed4a904317968bd885ee063455cee01728d3" "9527feeeec43970b1d725bdc04e97eb2b03b15be982ac50089ad223d3c6f2920" "c03d60937e814932cd707a487676875457e0b564a615c1edfd453f23b06fe879" "f3ec2da81c2b1f66f911fe47843a09055754b40fafaddcce79bbd4d781161329" "30c6aef3025cd6f05ccb611ec8838a448a14a6784987ed98b24f78916d63b388" "84ff07913c6109d12bfda40644daeaaa8f4665afb5f04e13e422bd98b02ee88b" "cf33119622dd833e4d8f904f34c5e3ff95d1d3d45bada72dd44648b3470bdebe" "f5776f3da6117901f29405fe52edb2bcba6a687629b4cbd5923d1a642484f2f9" "d56e289b10204629ac5c35b9621a650a534ef3baf183a1c601b4936482321df1" "50ceca952b37826e860867d939f879921fac3f2032d8767d646dd4139564c68a" "ff73e1b0216feca9e041dcb3196938442cc6aa8319f97eedbc2a3e38c8ca9825" "a18dd0a954ac63a80e62c8cb1b550ffcf5d8461189c7c672555faadf2facfcf3" "cb36f8e44d41595010baa23737984c4ecb2d8cc2e363ec15fbfa0408c2f8ea9f" "ea0c5df0f067d2e3c0f048c1f8795af7b873f5014837feb0a7c8317f34417b04" "9f42bccce1e13fa5017eb8718574db099e85358b9f424db78e7318f86d1be08f" default)))
 '(ido-use-filename-at-point nil)
 '(safe-local-variable-values
   (quote
    ((eval font-lock-add-keywords nil
           (quote
            (("defexamples\\|def-example-group\\| => "
              (0
               (quote font-lock-keyword-face)))
             ("(defexamples[[:blank:]]+\\(.*\\)"
              (1
               (quote font-lock-function-name-face))))))
     (eval font-lock-add-keywords nil
           (quote
            (("defexamples\\|def-example-group\\| => "
              (0
               (quote font-lock-keyword-face))))))
     (eval when
           (and
            (buffer-file-name)
            (file-regular-p
             (buffer-file-name))
            (string-match-p "^[^.]"
                            (buffer-file-name)))
           (emacs-lisp-mode))
     (eval font-lock-add-keywords nil
           (quote
            (("defexamples\\| => "
              (0
               (quote font-lock-keyword-face))))))
     (encoding . utf-8)))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js2-error-face ((t nil)) t)
 '(js2-warning-face ((t nil)) t))
